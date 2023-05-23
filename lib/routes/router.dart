import 'package:dailyflutter/screens/error_screen.dart';
import 'package:dailyflutter/screens/home_screen.dart';
import 'package:dailyflutter/screens/login_screen.dart';
import 'package:dailyflutter/screens/params_screen.dart';

import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  redirect: (context, state) {
    bool isLoggedIn = true; //using bloc access this

    if (isLoggedIn) {
      return state.location != "/" ? state.location : "/";
    }
    return "/login";
  },
  routes: [
    GoRoute(
        name: "mainApp",
        path: "/",
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: "productById",
            path: "product/:id",
            builder: (context, state) =>
                ScreenWithPath(id: state.pathParameters['id']),
          ),
        ]),
    GoRoute(
      name: "login",
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
