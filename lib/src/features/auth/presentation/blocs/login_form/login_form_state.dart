part of 'login_form_cubit.dart';

@freezed
class LoginFormState with _$LoginFormState, FormMixin {
  const LoginFormState._();

  const factory LoginFormState({
    required Field<String> emailField,
    required Field<String> passwordField,
  }) = _LoginFormState;

  @override
  List<Field> get fields => [emailField, passwordField];

  @override
  Map<String, dynamic> get values => {
        'email': emailField.value.trim(),
        'password': passwordField.value.trim(),
      };
}
