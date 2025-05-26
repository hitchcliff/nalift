class UserModel {
  const UserModel({required this.name, required this.email});

  final String name;
  final String email;

  static UserModel empty() {
    return UserModel(name: "", email: "");
  }

  static UserModel fromJSON(data) {
    print("UserModel: $data");

    return UserModel(name: data['name'], email: data['email']);
  }
}
