import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/feartures/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uid});
  factory UserModel.fromFirebaseServer(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uid: user.uid,
    );
  }
  factory UserModel.fromJson(json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      uid: json['uId'],
    );
  }
}
