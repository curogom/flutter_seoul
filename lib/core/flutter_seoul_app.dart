import 'package:flutter/material.dart';
import 'package:flutter_seoul/core/router.dart';

class FlutterSeoulApp extends StatelessWidget {
  const FlutterSeoulApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: CommonRouter().router(),
    );
  }
}
