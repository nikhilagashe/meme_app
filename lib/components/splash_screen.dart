import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meme_app/components/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MainScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[50],
        child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Container(
                  child: Image.network('assets/images/It-Team-Logo 1.png'),
                ),
              ],
            )),
      ),
    );
  }
}
