import 'dart:async';

import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/utils/widgets.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            child: Column(
              children: [
                Image.asset('assets/images/giesseLogo.png'),
                text('Giesse App'),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: text('Version 1.0'),
          ),
        ],
      ),
    );
  }
}
