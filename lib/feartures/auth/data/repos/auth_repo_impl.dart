import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/feartures/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/feartures/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmainAndPassword(String email, String password) {
    // TODO: implement createUserWithEmainAndPassword
    throw UnimplementedError();
  }
}