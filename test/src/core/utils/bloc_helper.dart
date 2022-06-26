import 'package:flutter_bloc/flutter_bloc.dart';

T mockCubit<T>(T Function() body) {
  return BlocOverrides.runZoned<T>(
    body,
  );
}
