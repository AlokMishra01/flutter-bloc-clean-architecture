import 'package:flutter_project_template/src/core/base/base_graphql_remote_source.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

import '../dtos/login_dto.dart';
import '../graphql/auth_queries.dart';

abstract class AuthRemoteSource {
  Future<LoginDto> login(Map<String, dynamic> values);
}

@LazySingleton(as: AuthRemoteSource)
class AuthRemoteSourceImpl extends BaseGraphRemoteSource
    implements AuthRemoteSource {
  AuthRemoteSourceImpl(GraphQLClient super.client);

  @override
  Future<LoginDto> login(Map<String, dynamic> values) async {
    return await networkRequest(
      request: (client) => client.query(
        QueryOptions(
          document: gql(AuthQueries.loginQuery),
          variables: values,
        ),
      ),
      onResponse: (response) => LoginDto.fromJson(response['login']),
    );
  }
}
