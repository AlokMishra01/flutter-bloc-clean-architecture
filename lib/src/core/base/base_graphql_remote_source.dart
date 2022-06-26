import 'package:graphql/client.dart';

import '../errors/api_exception.dart';
import '../extensions/api_extension.dart';

class BaseGraphRemoteSource {
  BaseGraphRemoteSource(this._client);

  final GraphQLClient _client;

  Future<T> networkRequest<T>({
    required Future<QueryResult> Function(GraphQLClient client) request,
    required T Function(Map<String, dynamic> response) onResponse,
  }) async {
    final response = await request(_client);
    if (response.hasException) throw response.exception!.toApiException;
    if (response.data != null) return onResponse(response.data!['data']);
    throw const ApiException.serverException(
        message: 'Unexpected Error Occurred');
  }
}
