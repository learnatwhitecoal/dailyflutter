import 'package:dailyflutter/screens/error_screen.dart';
import 'package:dailyflutter/screens/home_screen.dart';
import 'package:dailyflutter/screens/login_screen.dart';
import 'package:dailyflutter/screens/params_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        redirect: (context, state) {
          bool isLoggedIn = true; //logic for login
          if (isLoggedIn) {
            return "/";
          }

          //return "/login";
        },
        routes: [
          GoRoute(
            path: 'routeparams/:id',
            builder: (context, state) =>
                ScreenWithPath(id: state.pathParameters['id']),
          ),
        ]),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    )
  ],
);
