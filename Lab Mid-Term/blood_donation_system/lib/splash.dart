import 'package:blood_donation_system/dashboard.dart';
import 'package:blood_donation_system/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  splashIt(int duration) {
    return Future.delayed(Duration(seconds: duration),
        () => Navigator.pushReplacement(context, _createRoute(Login())));
  }

  @override
  Widget build(BuildContext context) {
    splashIt(1);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/blooddrop.png",
            width: 100,
            height: 100,
          ),
          const Text(
            "bDonor",
            style: TextStyle(
                fontFamily: 'montserrat', decoration: TextDecoration.none),
          )
        ],
      ),
    );
  }
}

Route _createRoute(Widget widget) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => widget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
