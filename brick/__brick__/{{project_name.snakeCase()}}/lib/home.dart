import 'package:flutter/material.dart';
import 'package:opposity/global_providers.dart';
import 'package:opposity/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home'),
            Text(ref.watch(firebaseAuthProvider).currentUser!.uid.toString()),
            ElevatedButton(
              onPressed: () {
                final auth = ref.watch(authServiceProvider);
                auth.signOut();
              },
              child: const Text('Go Home'),
            )
          ],
        ),
      ),
    );
  }
}
