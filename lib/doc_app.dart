import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testapp/core/routing/app_router.dart';
import 'package:testapp/core/routing/routs.dart';
import 'package:testapp/core/theming/colors.dart';

import 'core/helpers/constants.dart';

class DocApp extends StatefulWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  State<DocApp> createState() => _DocAppState();
}

class _DocAppState extends State<DocApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
        onGenerateRoute: widget.appRouter.generateRoute,
      ),
    );
  }
}
