enum UserAccountType { passenger, driver }

class UserModel {
  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.accountType,
  });

  final String id;
  final String name;
  final String email;
  final String phone;
  final String accountType;

  static UserModel fromJSON(data) {
    return UserModel(
      id: data['id'],
      name: data['name'],
      email: data['email'],
      phone: data['phone'],
      accountType: data['accountType'],
    );
  }

  Map<String, dynamic> toJSON() {
    return {
      "name": name,
      "email": email,
      "phone": phone,
      "accountType": accountType,
    };
  }
}
