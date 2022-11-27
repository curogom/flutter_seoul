import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_seoul/firebase_options.dart';

class FirebaseCoreService {
  static Future<void> initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}