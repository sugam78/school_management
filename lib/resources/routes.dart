

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/screens/home/presentation/pages/home_screen.dart';

import '../screens/splash_screen/presentation/pages/splash_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final route = GoRouter(
    initialLocation: '/splash',
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
    ]);