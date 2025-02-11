import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harmony_hub/features/auth/domain/entities/app_user.dart';
import 'package:harmony_hub/features/auth/domain/repositories/app_user_repo.dart';
import 'package:harmony_hub/features/auth/presentation/bloc/states/auth_states.dart';

class AuthCubit extends Cubit<AuthState> {
  final AppUserRepo authRepo;
  AppUser? _currentUser;

  AuthCubit({required this.authRepo}) : super(AuthInitial());

  void checkAuth() async {
    final AppUser? user = await authRepo.getCurrentUser();
    if (user != null) {
      _currentUser = user;
      emit(Authenticated(user));
    } else {
      emit(Unauthenticated());
    }
  }

  AppUser? get currentUser => _currentUser;

  Future<void> login(String email, String password) async {
    try {
      emit(AuthLoading());
      AppUser? user = await authRepo.logInWithEmail(email, password);
      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user));
      } else {
        emit(Unauthenticated());
      }
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> register(String name, String email, String password) async {
    try {
      emit(AuthLoading());
      AppUser? user =
          await authRepo.createAccountWithEmail(name, email, password);
      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user));
      } else {
        emit(Unauthenticated());
      }
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> logout() async {
    authRepo.logOut();
    emit(Unauthenticated());
  }
}
