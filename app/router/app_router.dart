import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/shell/presentation/pages/portfolio_shell_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PortfolioShellPage(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          'Page not found: ${state.uri}',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    ),
  );
}
