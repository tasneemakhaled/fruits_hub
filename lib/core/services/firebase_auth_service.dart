import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmainAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in firebase auth service.create user with email and password ${e.toString()} and code =${e.code}',
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور ضعيفة جدا');
        // print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'هذا الحساب موجود بالفعل ');
        // print('The account already exists for that email.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تأكد من اتصالك بالانترنت');
      } else {
        throw CustomException(message: 'حدث خطأ برجاء المحاولة لاحقا');
      }
    } catch (e) {
      log(
        'Exception in firebase auth service.create user with email and password ${e.toString()}',
      );
      throw CustomException(message: 'حدث خطأ برجاء المحاولة لاحقا');
    }
  }
}
