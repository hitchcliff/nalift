import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/models/register_model.dart';
import 'package:nalift/notifiers/register_notifier.dart';

final registerProvider = StateNotifierProvider<RegisterNotifier, RegisterModel>(
  (ref) => RegisterNotifier(RegisterModel.empty()),
);
