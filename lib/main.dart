import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_seoul/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  runApp(const FlutterSeoulApp());
}

Future<void> initApp() async {
  /// Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class FlutterSeoulApp extends StatelessWidget {
  const FlutterSeoulApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Seoul'),
        ),
        body: const Center(
          child: Text('Flutter Seoul Flutter App'),
        ),
      ),
    );
  }
}
