import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:guess_game/splash.dart';

void main() {
  runApp(
    MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      home: SplashScreen(),
    ),
  );
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
