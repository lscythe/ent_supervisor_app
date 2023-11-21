import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supervisor/features/features.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: LoginScreen.path,
  routes: [
    GoRoute(
      path: LoginScreen.path,
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
