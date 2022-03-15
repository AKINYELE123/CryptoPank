import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/screens/detaiils/login.dart';
import 'package:flutter/material.dart';

import '../../constant/clickbutton.dart';

class OnboardScreen3 extends StatefulWidget {
  const OnboardScreen3({Key? key}) : super(key: key);

  @override
  _OnboardScreen3State createState() => _OnboardScreen3State();
}

class _OnboardScreen3State extends State<OnboardScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: background,
        padding: EdgeInsets.all(20),
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Skip",
                  style: TextStyle(
                      color: blue, fontWeight: FontWeight.w300, fontSize: 24),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset("assets/images/onboardthird.png"),
            SizedBox(
              height: 50,
            ),
            Container(
                width: 260,
                child: Center(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ))),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 300,
                child: Center(
                    child: Text(
                      "Amet neque sit lacus metus aliquam ut egestas quis. Tincidunt pharetra morbi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ))),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())),
              child: AppButton(
                text: "Next",
              ),
            )
          ],
        ),
      ),
    );
  }
}
