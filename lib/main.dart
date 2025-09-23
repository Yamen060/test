import 'package:flutter/material.dart';
import 'package:testapp/core/di/dependency_injection.dart';
import 'package:testapp/core/routing/app_router.dart';
import 'package:testapp/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
