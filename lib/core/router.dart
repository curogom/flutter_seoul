import 'package:flutter_seoul/core/view/login/login.dart';
import 'package:go_router/go_router.dart';

class CommonRouter {
  final GoRoute _loginRouter = GoRoute(path: '/', builder: (context, state) => const FSLoginPage());

  GoRouter router() {
    return GoRouter(
        routes: [
      _loginRouter,
    ]);
  }
}
