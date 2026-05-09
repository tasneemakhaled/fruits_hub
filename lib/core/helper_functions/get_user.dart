import 'dart:convert';

import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_prefrences_single_ton.dart';
import 'package:fruits_hub/feartures/auth/data/models/user_model.dart';
import 'package:fruits_hub/feartures/auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  var jsonString = SharedPrefrencesSingleTon.getString(kUserData);

  // ✅ تأكد إن الـ string مش فاضي
  if (jsonString == null || jsonString.isEmpty) {
    return UserEntity(name: '', email: '', uid: ''); // أو default values عندك
  }

  var userEntity = UserModel.fromJson(jsonDecode(jsonString));
  return userEntity;
}
