import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/features/user_model.dart';

part 'state.g.dart';

@riverpod
User? currentUser() => FirebaseAuth.instance.currentUser;
