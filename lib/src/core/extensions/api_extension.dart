import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_project_template/src/core/constants/graphql_error_codes.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql/client.dart';

import '../errors/api_exception.dart';
import '../logging/logger.dart';

extension ApiExceptionDioX on DioError {
  ApiException get toException {
    switch (type) {
      //TODO handle exceptions according to server response
      case DioErrorType.response:
        final code = response?.statusCode!;
        if (code == 422) {
          return ApiException.unprocessableEntity(
              message: message, errors: response?.data['errors'] ?? {});
        } else if (code == 401) {
          return const ApiException.unAuthorized();
        } else if (code == 400) {
          if (response!.data['errors'] != null) {
            logger.info(response!.data['errors']);
            final errors =
                List<Map<String, dynamic>>.from(response?.data['errors'])
                    .map((e) => e.toGraphError)
                    .toList();
            if (errors.isNotEmpty) {
              var errorsMap = <String, dynamic>{};
              for (final GraphQLError err in errors) {
                errorsMap = {...errorsMap, ...err.error};
              }
              return ApiException.unprocessableEntity(
                  message: message, errors: errorsMap);
            } else {
              return ApiException.serverException(message: message);
            }
          } else {
            return ApiException.serverException(message: message);
          }
        } else {
          return ApiException.serverException(message: message);
        }
      case DioErrorType.other:
        if (error is SocketException) {
          return const ApiException.network();
        } else {
          return ApiException.serverException(message: message);
        }
      default:
        return ApiException.serverException(message: message);
    }
  }
}

extension MapX on Map {
  GraphQLError get toGraphError {
    return GraphQLError(
        message: this['message'],
        locations: List<Map<String, dynamic>>.from(this['locations'])
            .map((e) => ErrorLocation(line: e['line'], column: e['column']))
            .toList(),
        path: this['path'],
        extensions: this['extensions']);
  }
}

extension GraphqlErrorX on GraphQLError {
  Map<String, dynamic> get error {
    if (extensions != null && extensions!['code'] != null) {
      if (extensions!['code'] == GraphqlErrorCodes.badRequest ||
          extensions!['code'] == GraphqlErrorCodes.validation) {
        return {'name': extensions!['argumentName'], 'message': message};
      }
    }
    return {};
  }

  bool get hasExtensions => extensions != null && extensions!.isNotEmpty;

  String? get code => extensions != null && extensions!['code'] != null
      ? extensions!['code']
      : null;
}

extension ApiExceptionXGraphQl on OperationException {
  ApiException get toApiException {
    if (graphqlErrors.isNotEmpty) {
      Map<String, dynamic> errorsMap = {};
      for (final GraphQLError err in graphqlErrors) {
        if (err.hasExtensions) {
          switch (err.code) {
            case GraphqlErrorCodes.validation:
            case GraphqlErrorCodes.badRequest:
              errorsMap = {...errorsMap, ...err.error};
              break;
            case null:
            case GraphqlErrorCodes.parse:
            case GraphqlErrorCodes.forbidden:
            case GraphqlErrorCodes.server:
            case GraphqlErrorCodes.queryNotFound:
            case GraphqlErrorCodes.queryNotSupported:
            default:
              return ApiException.serverException(message: err.message);
          }
        } else {
          return ApiException.serverException(message: err.message);
        }
      }
      if (errorsMap.isNotEmpty)
        return ApiException.unprocessableEntity(
            message: GraphqlErrorCodes.validation, errors: errorsMap);
      return const ApiException.serverException(message: 'Unknown Error');
    } else if (linkException != null) {
      if (linkException! is HttpLinkServerException) {
        return const ApiException.serverException(
            message: 'Something Went Wrong!!!!');
      } else if (linkException! is UnknownException ||
          linkException! is NetworkException) {
        return const ApiException.network();
      } else if (linkException is DioLinkServerException) {
        final dioError = linkException!.originalException as DioError;
        return dioError.toException;
      } else {
        return ApiException.serverException(
            message: linkException!.originalException.toString());
      }
    } else {
      return const ApiException.serverException(
          message: 'Something Went Wrong!!!!');
    }
  }
}
