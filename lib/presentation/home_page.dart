import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /*final currentUser = ref.watch(currentUserProvider);*/
    return const Scaffold(
      body: Center(
        child: Text(""),
      ),
    );
  }
}
