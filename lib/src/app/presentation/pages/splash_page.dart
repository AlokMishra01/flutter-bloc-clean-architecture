import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template/src/app/presentation/blocs/app/app_cubit.dart';
import 'package:flutter_project_template/src/core/di/injector.dart';
import 'package:flutter_project_template/src/core/routes/app_router.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AppCubit, AppState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            authenticated: () {
              getIt<AppRouter>().replace(const DashboardRoute());
            },
            unAuthenticated: () {
              getIt<AppRouter>().replace(LoginRoute());
            },
          );
        },
        child: const SizedBox.shrink(),
      ),
    );
  }
}
