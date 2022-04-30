import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthUser {
  String? id;

  AuthUser.fromFirebase(User? user){
    id = user!.uid;
  }
}

