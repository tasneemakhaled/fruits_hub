import 'package:fruits_hub/feartures/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity>createUserWithEmainAndPassword(String email,String password);
}