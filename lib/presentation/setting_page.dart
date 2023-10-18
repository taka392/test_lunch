import 'package:flutter/material.dart';

import '../infrastructure/firestore/firestore.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  final service = Firestore();
                  service.updateUserData2();
                },
                child: const Text('クリックしてください'),
              ),
              const Text('設定'),
            ],
          ),
        ),
      );
}
