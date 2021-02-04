import 'dart:async';

import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Timer> startTime() async {
    // Time to wait
    const _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/SignIn');
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
