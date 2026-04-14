import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/feartures/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmainAndPassword(
    String email,
    String password,
    String name,
  );
  Future<Either<Failure, UserEntity>> signInWithEmainAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, UserEntity>> signInWithGoogle();
  // Future<Either<Failure, UserEntity>> signInWithFacebook();
  Future<Either<Failure, UserEntity>> signInWithApple();
}
