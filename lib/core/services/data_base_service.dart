abstract class DataBaseService {
  Future<void> addData({
    required String path, // collection name or link api
    required Map<String, dynamic> data,
  });
}
