import 'package:dailyflutter/screens/home_screen.dart';
import 'package:dailyflutter/screens/params_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/routeparams/:id',
      builder: (context, state) =>
          ScreenWithPath(id: state.pathParameters['id']),
    ),
  ],
);
