import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:nalift/models/user_model.dart';
// part "user.g.dart";

// UserRepository userRepository(UserRepositoryRef ref) {
//   return UserRepository(ref);
// }

// class UserRepository {
//   UserRepository(this.ref);

//   final Ref ref;

//   /// Simple fetch user through input
//   Future<UserModel> fetchUser(String input) async {
//     var url = 'https://jsonplaceholder.typicode.com/users/$input';
//     return http
//         .get(Uri.parse(url))
//         .then((value) => UserModel.fromJSON(value.body));
//   }
// }
