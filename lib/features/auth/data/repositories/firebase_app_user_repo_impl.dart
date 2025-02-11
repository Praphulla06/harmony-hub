import 'package:firebase_auth/firebase_auth.dart';
import 'package:harmony_hub/features/auth/data/models/firebase_app_user.dart';
import 'package:harmony_hub/features/auth/domain/entities/app_user.dart';
import 'package:harmony_hub/features/auth/domain/repositories/app_user_repo.dart';

class AuthRepo implements AppUserRepo {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Future<AppUser?> logInWithEmail(String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return UserModel(
          uid: userCredential.user!.uid,
          name: userCredential.user!.displayName ?? '',
          email: email);
    } catch (e) {
      throw Exception('Login Failed: $e');
    }
  }

  @override
  Future<AppUser?> createAccountWithEmail(
      String name, String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return UserModel(uid: userCredential.user!.uid, name: name, email: email);
    } catch (e) {
      throw Exception('Failed to create account! $e');
    }
  }

  @override
  Future<void> logOut() async {
    await firebaseAuth.signOut();
  }

  @override
  Future<AppUser?> getCurrentUser() async {
    final firebaseUser = firebaseAuth.currentUser;

    if (firebaseUser == null) {
      return null;
    }

    return UserModel(
        uid: firebaseUser.uid,
        name: firebaseUser.displayName ?? '',
        email: firebaseUser.email!);
  }
}
