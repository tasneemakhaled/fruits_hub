import 'dart:convert';
import 'dart:developer';
import 'dart:math' hide log;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';

import 'package:crypto/crypto.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:sign_in_with_apple/sign_in_with_apple.dart';

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

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in firebase auth service.sign in  with email and password ${e.toString()} and code =${e.code}',
      );
      if (e.code == 'user-not-found') {
        throw CustomException(
          message: ' البريد الالكتروني غير صحيح اوالرقم السري غير صحيح',
        );
        // print('The password provided is too weak.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
          message: 'الرقم السري غير صحيح او البريد الالكتروني غير صحيح',
        );
        // print('The account already exists for that email.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تأكد من اتصالك بالانترنت');
      } else {
        throw CustomException(message: 'حدث خطأ برجاء المحاولة لاحقا');
      }
    } catch (e) {
      log(
        'Exception in firebase auth service.sign in with email and password ${e.toString()}',
      );
      throw CustomException(message: 'حدث خطأ برجاء المحاولة لاحقا');
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return (await FirebaseAuth.instance.signInWithCredential(
      facebookAuthCredential,
    )).user!;
  }

  String generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<User> signInWithApple() async {
    // To prevent replay attacks with the credential returned from Apple, we
    // include a nonce in the credential request. When signing in with
    // Firebase, the nonce in the id token returned by Apple, is expected to
    // match the sha256 hash of `rawNonce`.
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    // Request credential for the currently signed in Apple account.
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    // Create an `OAuthCredential` from the credential returned by Apple.
    final oauthCredential = OAuthProvider(
      "apple.com",
    ).credential(idToken: appleCredential.identityToken, rawNonce: rawNonce);

    // Sign in the user with Firebase. If the nonce we generated earlier does
    // not match the nonce in `appleCredential.identityToken`, sign in will fail.
    return (await FirebaseAuth.instance.signInWithCredential(
      oauthCredential,
    )).user!;
  }

  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  bool isLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }
}
