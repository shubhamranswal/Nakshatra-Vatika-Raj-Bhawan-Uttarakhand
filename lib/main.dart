import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nakshatra_vatika/splash/splash.dart';

void main() {
  runApp(const App());
}

Color mainThemeColor = const Color(0xFF272D8D);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nakshatra Vatika - Raj Bhawan Uttarakhand',
        theme: ThemeData(
          fontFamily: 'TiltNeon',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
          useMaterial3: true,
        ),
        home: const SplashPage());
  }
}
