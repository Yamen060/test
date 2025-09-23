import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/core/di/dependency_injection.dart';
import 'package:testapp/core/routing/routs.dart';
import 'package:testapp/features/home/ui/home_screen.dart';
import 'package:testapp/features/login/logic/cubit/login_cubit.dart';
import 'package:testapp/features/login/ui/login_screen.dart';
import 'package:testapp/features/onbording/onbording_screen.dart';
import 'package:testapp/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:testapp/features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const onBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return null;
    }
  }
}
