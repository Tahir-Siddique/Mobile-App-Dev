import 'package:flutter/material.dart';
import 'package:guess_game/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  splashIt(int duration, BuildContext context) {
    return Future.delayed(
      Duration(seconds: duration),
      () => Navigator.pushReplacement(
        context,
        _createRoute(
          HomeScreen(),
        ),
      ),
    );
  }

  Route _createRoute(Widget widget) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    splashIt(2, context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Image.asset('images/logo.png'),
        ),
      ),
    );
  }
}
