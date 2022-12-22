class UserModel {
  final String name;
  final String email;
  final String id;

  UserModel({
    required this.name,
    required this.email,
    required this.id,
  });

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, id: $id)';
  }
}
