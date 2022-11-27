import 'package:flutter/material.dart';
import 'package:flutter_seoul/firebase/firebase.dart';

class FSLoginPage extends StatelessWidget {
  const FSLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FirebaseAuthService authService = FirebaseAuthService();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(onPressed: () => authService.signInWithGoogle(), child: const Text('Google로 로그인 하기')),
            OutlinedButton(onPressed: () => authService.signOut(), child: const Text('로그아웃'))
          ],
        ),
      ),
    );
  }
}
