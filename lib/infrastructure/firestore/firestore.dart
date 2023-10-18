import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Firestore {
  final db = FirebaseFirestore.instance;
  final currentUser = FirebaseAuth.instance.currentUser;
  Future<void> updateUserData() async {
    debugPrint('現在ログインしているユーザー: ${currentUser!.uid.toString()}');

    await db.collection('users').doc(currentUser!.uid).update({
      'metadata': {
        'title': '米津玄師',
        'artist': 'Lemon',
        'released': 2018,
        'genre': 'J-POP',
      },
    });
  }

  Future<void> updateUserData2() async {
    debugPrint('現在ログインしているユーザー: ${currentUser!.uid.toString()}');
    await db.collection('users').doc(currentUser!.uid).update({
      'aaaa': {
        'title': '米津玄師',
        'artist': 'Lemon',
        'released': 2018,
        'genre': 'J-POP',
      },
    });
  }
}
