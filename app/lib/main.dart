import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/screen/login_signup.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(LoginSignupUI());
}

class LoginSignupUI extends StatelessWidget {
  const LoginSignupUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Signup UI",
      // home: LoginSignupScreen(),
      home: AnimatedSplashScreen(
          splash: Transform.scale(
            child: Image.asset("images/kasirnow.png"),
            scale: 2,
            alignment: Alignment.center,
          ),
          duration: 3000,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Color.fromARGB(255, 76, 194, 147).withOpacity(.95),
          nextScreen: LoginSignupScreen()),
    );
  }
}
