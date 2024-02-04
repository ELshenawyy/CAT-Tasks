import 'package:api_bloc_clean/src/view/screens/login.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        loaderColor: Colors.cyanAccent,
        logo: Image.asset("images/splash_screen.jpg"),
        logoWidth: 200,
        backgroundColor: Colors.yellowAccent,
        loadingText: const Text("loading..."),
        showLoader: true,
          navigator : const LoginScreen(),
        durationInSeconds: 5,
      ),
    );
  }
}
