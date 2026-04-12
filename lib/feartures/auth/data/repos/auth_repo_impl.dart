import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/feartures/auth/data/models/user_model.dart';
import 'package:fruits_hub/feartures/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/feartures/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
 final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmainAndPassword(String email, String password,String name) async{
  try {
  var user=  await firebaseAuthService.createUserWithEmainAndPassword(email: email, password: password);
    return right(UserModel.fromFirebaseServer(user));
} on CustomException catch (e) {
 return left(ServerFailure(errMessage: e.message));
}catch(e){
  log('Exception in createUserWithEmainAndPassword ${e.toString()} ');
  throw CustomException(message: e.toString());
}

  }
}