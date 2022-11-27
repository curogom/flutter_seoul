import 'package:flutter/material.dart';
import 'package:flutter_seoul/core/flutter_seoul_app.dart';
import 'package:flutter_seoul/firebase/firebase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  runApp(const FlutterSeoulApp());
}

Future<void> initApp() async {
  /// Initialize Firebase
  await FirebaseCoreService.initFirebase();
  FirebaseAuthService authService = FirebaseAuthService();
  authService.listenFirebaseAuthState();
  authService.listenFirebaseAuthToken();
  authService.listenFirebaseAuthUserChange();
}
