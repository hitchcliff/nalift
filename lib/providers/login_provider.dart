import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/controllers/login_controller.dart';
import 'package:nalift/notifiers/login_notifier.dart';

/// Read only
// final nameProvider = Provider<String>((ref) {
//   return "Login here";
// });

/// Read and Write simple value for primitive types only
// final emailProvider = StateProvider<String?>((ref) => null);

/// Write in simple objects
// ref.read(emailProvider.notifier).update((state) => value);

/// Read and write complex state objects/arrays
final loginProvider = StateNotifierProvider<LoginNotifier, LoginController>(
  (ref) => LoginNotifier(LoginController.empty()),
);
