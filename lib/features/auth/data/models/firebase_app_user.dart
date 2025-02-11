import 'package:harmony_hub/features/auth/domain/entities/app_user.dart';

class UserModel extends AppUser {
  UserModel({required super.uid, required super.name, required super.email});

  // Json (firebase) to UserModel (AppUser)
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'],
      name: json['name'],
      email: json['email']
    );
  }

  // UserModel (AppUser) to Json (firebase)
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'email': email
    };
  }
}