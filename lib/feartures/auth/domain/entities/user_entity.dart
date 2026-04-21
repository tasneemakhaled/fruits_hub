class UserEntity {
  final String name;
  final String email;
  // final String password;
  final String userId;
  UserEntity({required this.name, required this.email, required this.userId});
  toMap() {
    return {'name': name, 'email': email, 'uId': userId};
  }
}
