import 'package:dailyflutter/screens/error_screen.dart';
import 'package:dailyflutter/screens/home_screen.dart';

import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
      name: "mainApp",
      path: "/",
      builder: (context, state) => const HomeScreen(),
    )
  ],
);
