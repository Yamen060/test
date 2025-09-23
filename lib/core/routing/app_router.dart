import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/core/di/dependency_injection.dart';
import 'package:testapp/core/routing/routs.dart';
import 'package:testapp/features/home/ui/home_screen.dart';
import 'package:testapp/features/login/logic/cubit/login_cubit.dart';
import 'package:testapp/features/login/ui/login_screen.dart';

import 'package:testapp/features/onbording/onbording_screen.dart';

class AppRouter {
  Route generatRoute(RouteSettings settings) {
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
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defind forb ${settings.name}')),
          ),
        );
    }
  }
}
