import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/controllers/register_controller.dart';
import 'package:nalift/notifiers/register_notifier.dart';

final registerProvider =
    StateNotifierProvider<RegisterNotifier, RegisterController>(
      (ref) => RegisterNotifier(RegisterController.empty()),
    );
