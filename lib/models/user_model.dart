enum UserAccountType { passenger, driver }

class UserModel {
  const UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.accountType,
  });

  final String name;
  final String email;
  final String phone;
  final String accountType;

  static UserModel empty() {
    return UserModel(
      name: "",
      email: "",
      phone: "",
      accountType: UserAccountType.passenger.toString(),
    );
  }

  static UserModel fromJSON(data) {
    print("UserModel: $data");

    return UserModel(
      name: data['name'],
      email: data['email'],
      phone: data['phone'],
      accountType: data['accountType'],
    );
  }
}
