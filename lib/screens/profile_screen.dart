import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nalift/repository/auth_repository.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AuthRepository authRepository = AuthRepository();

    return Column(
      children: [
        Center(child: Text("Profile page")),
        ElevatedButton(
          onPressed: () {
            authRepository.logout();
          },
          child: Text("Logout"),
        ),
      ],
    );
  }
}
