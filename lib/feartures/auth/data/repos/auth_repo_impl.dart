import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/feartures/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/feartures/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmainAndPassword(String email, String password) {
    FirebaseAuthService.createUserWithEmainAndPassword(email: email, password: password);
  
    throw UnimplementedError();
  }
}