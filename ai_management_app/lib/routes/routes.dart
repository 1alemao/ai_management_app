import 'package:ai_management_app/authentication/pages/login_page.dart';
import 'package:ai_management_app/home_page/home_page.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class AppRoutes {
  static router({required bool isAuthenticated}) => GoRouter(
        initialLocation: isAuthenticated ? '/' : '/login',
        routes: <RouteBase>[
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            },
          ),
          GoRoute(
            path: '/login',
            builder: (BuildContext context, GoRouterState state) {
              return const LoginPage();
            },
          ),
          GoRoute(
            path: '/train',
            builder: (BuildContext context, GoRouterState state) {
              return Container(
                width: 200,
                height: 200,
                color: Colors.red,
              );
            },
          ),
        ],
      );
}
