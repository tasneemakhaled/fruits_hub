import 'package:fruits_hub/feartures/auth/domain/entities/user_entity.dart';

abstract class DataBaseService {
  Future<void> addData({
    required String path, // collection name or link api
    required Map<String, dynamic> data,
  });
  Future<Map<String, dynamic>> getData({
    // read data
    required String path,
    required String documentId,
  });
}
