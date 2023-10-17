import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state.g.dart';

@riverpod
Stream<User?> currentUser(CurrentUserRef ref) =>
    FirebaseAuth.instance.authStateChanges();
