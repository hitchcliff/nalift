class UserModel {
  const UserModel({
    required this.name,
    required this.email,
    required this.phone,
  });

  final String name;
  final String email;
  final String phone;

  static UserModel empty() {
    return UserModel(name: "", email: "", phone: "");
  }

  static UserModel fromJSON(data) {
    print("UserModel: $data");

    return UserModel(
      name: data['name'],
      email: data['email'],
      phone: data['phone'],
    );
  }
}
