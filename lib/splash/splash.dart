import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../home/home.dart';
import '../main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) {
            return const LandingPage();
          },
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: mainThemeColor),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/lionLogo.png',
            color: Colors.white,
            height: 80,
            width: 80,
          ),
        ),
      ],
    );
  }
}