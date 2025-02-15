import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:harmony_hub/features/auth/presentation/bloc/cubits/auth_cubit.dart';
import 'package:harmony_hub/features/auth/presentation/bloc/states/auth_states.dart';
import 'package:harmony_hub/features/auth/presentation/pages/auth_page.dart';
import 'package:harmony_hub/features/home/presentation/pages/home_page.dart';
import 'package:harmony_hub/features/notes/presentation/pages/note_page.dart';
import 'package:harmony_hub/features/planner/presentation/pages/planner_page.dart';
import 'package:harmony_hub/features/settings/presentation/pages/settings_page.dart';

GoRouter goRouter = GoRouter(
  redirect: (context, routeState) {
    final authState = context.read<AuthCubit>().state;

    final bool isAuthenticated = authState is Authenticated;
    final bool isGoingToLogin = routeState.matchedLocation == '/auth';

    if (!isAuthenticated && !isGoingToLogin) {
      return '/auth';
    }
    return null;
  },
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
    GoRoute(path: '/notes', builder: (context, state) => NotePage()),
    GoRoute(path: '/planner', builder: (context, state) => PlannerPage()),
    GoRoute(path: '/settings', builder: (context, state) => SettingsPage()),
    GoRoute(path: '/auth', builder: (context, state) => AuthPage()),
  ],
);
