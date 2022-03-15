import 'package:cryptobank/constant/clickbutton.dart';
import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/screens/onboarding/onboard3.dart';
import 'package:flutter/material.dart';
class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

  @override
  _OnboardingScreen2State createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
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
            Image.asset("assets/images/onboardsec.png"),
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
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardScreen3())),
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
