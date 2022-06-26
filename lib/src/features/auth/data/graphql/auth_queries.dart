class AuthQueries {
  const AuthQueries._();

  static const String loginQuery = r'''
      query LoginQuery($email:String!,$password:String!){
          login(email:$email,password:$password){
            accessToken
            refreshToken
            expiresIn
          }
      }
  ''';
}
