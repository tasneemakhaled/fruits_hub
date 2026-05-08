abstract class DataBaseService {
  Future<void> addData({
    required String path, // collection name or link api
    required Map<String, dynamic> data,
    String? documentId,
  });
  Future<dynamic> getData({
    // read data
    required String path,
    String? documentId,
  });
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  });
}
