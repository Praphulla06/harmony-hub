import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harmony_hub/core/navigation/app_router.dart';
import 'package:harmony_hub/core/state_management/theme/cubits/theme_cubit.dart';import 'package:harmony_hub/features/auth/data/repositories/firebase_app_user_repo_impl.dart';
import 'package:harmony_hub/features/auth/domain/repositories/app_user_repo.dart';
import 'package:harmony_hub/features/auth/presentation/bloc/cubits/auth_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppUserRepo authRepo = AuthRepo();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(
            create: (context) => AuthCubit(authRepo: authRepo)..checkAuth()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: context.watch<ThemeCubit>().themeData,
        routerConfig: goRouter,
      ),
    );
  }
}
