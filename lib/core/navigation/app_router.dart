import 'package:go_router/go_router.dart';
import 'package:harmony_hub/features/auth/presentation/pages/auth_page.dart';
import 'package:harmony_hub/features/home/presentation/pages/home_page.dart';
import 'package:harmony_hub/features/notes/presentation/pages/note_page.dart';
import 'package:harmony_hub/features/planner/presentation/pages/planner_page.dart';

GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(path: '/note', builder: (context, state) => NotePage()),
    GoRoute(path: '/planner', builder: (context, state) => PlannerPage()),
    GoRoute(path: '/auth', builder: (context, state) => AuthPage()),
  ]
);