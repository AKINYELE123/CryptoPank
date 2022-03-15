import 'dart:async';
import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/screens/onboarding/onboarding1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const OnboardingScreen1(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 120,
                height: 110,
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    "Pank",
                    style:  TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  const TextSpan(
                      text: "Crypto", style: TextStyle(color: Colors.white)),
                  TextSpan(text: "Pank", style: TextStyle(color: blue)),
                ])),
            const SizedBox(
              height: 20,
            ),
            Container(
                width: 280,
                child: Center(
                    child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white.withOpacity(0.4)),
                )))
          ],
        ),
      ),
    );
  }
}
