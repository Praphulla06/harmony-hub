import 'package:harmony_hub/features/auth/domain/entities/app_user.dart';

abstract class AppUserRepo {
  Future<AppUser?> logInWithEmail(String email, String password);
  Future<AppUser?> createAccountWithEmail(String name, String email, String password); 
  Future<void> logOut();
  Future<AppUser?> getCurrentUser();
}