import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/services/data_base_service.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/core/services/firestore_service.dart';
import 'package:fruits_hub/core/utils/backend_endpoints.dart';
import 'package:fruits_hub/feartures/auth/data/models/user_model.dart';
import 'package:fruits_hub/feartures/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/feartures/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DataBaseService dataBaseService;
  AuthRepoImpl({
    required this.firebaseAuthService,
    required this.dataBaseService,
  });
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmainAndPassword(
        email: email,
        password: password,
      );
      var userEntity = UserEntity(name: name, email: email, uid: user.uid);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(ServerFailure(errMessage: e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log('Exception in createUserWithEmainAndPassword ${e.toString()} ');
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = await getUserData(uid: user.uid);
      return right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(errMessage: e.message));
    } catch (e) {
      log('Exception in signInWithEmailAndPassword ${e.toString()}');
      return left(ServerFailure(errMessage: e.toString())); // ✅ بدل throw
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithApple() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithApple();
      var userEntity = UserModel.fromFirebaseServer(user);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(ServerFailure(errMessage: e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log('Exception in signInWithApple ${e.toString()} ');
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseServer(user);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(ServerFailure(errMessage: e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log('Exception in signInWithFacebook ${e.toString()} ');
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseServer(user);
      bool isUserExists = await dataBaseService.checkIfDataExists(
        path: BackendEndpoints.isDataExists,
        documentId: user.uid,
      );
      if (isUserExists) {
        await getUserData(uid: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(ServerFailure(errMessage: e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log('Exception in signInWithGoogle ${e.toString()} ');
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<dynamic> addUserData({required UserEntity user}) async {
    await dataBaseService.addData(
      path: BackendEndpoints.addUserData,
      data: user.toMap(),
      documentId: user.uid,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var data = await dataBaseService.getData(
      path: BackendEndpoints.getUserData,
      documentId: uid,
    );
    return UserModel.fromJson(data);
  }
}
