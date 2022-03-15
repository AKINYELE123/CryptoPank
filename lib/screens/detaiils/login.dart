import 'dart:ui';

import 'package:cryptobank/constant/clickbutton.dart';
import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/screens/detaiils/forgetpass.dart';
import 'package:cryptobank/screens/detaiils/signup.dart';
import 'package:cryptobank/screens/homescreens/home_screens.dart';
import 'package:cryptobank/screens/verify/verifydocs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height,
        color: background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Login",
                  style: TextStyle(color: fWhite, fontSize: 26),
                ),
                Text(
                  "Skip",
                  style: TextStyle(color: blue, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
                width: 230,
                child: Text(
                  "You’ve got some options, But you don’t always have to be stressed",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: fWhite, fontSize: 12),
                )),
            SizedBox(
              height: 34,
            ),
            Container(
                decoration: BoxDecoration(
                  color: grey,
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Username",
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                              fontSize: 14,
                            ))))),
            SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: grey,
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                              fontSize: 14,
                            ))))),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPass())),
                    child: Text("Forget Passwords?", style: TextStyle(color: Colors.white, fontSize: 12),))
              ],
            ),
            SizedBox(
              height: 54,
            ),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())),
              child: AppButton(
                text: "Login",
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Center(child: Text("or Continue with", style: TextStyle(color: lowWhite.withOpacity(0.3), fontSize: 14),textAlign: TextAlign.center,)),
            SizedBox(
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: grey,
                  ),
                  child: Image.asset("assets/images/google.png")
                ),
                Container(
                  padding: EdgeInsets.all(20),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: grey,
                    ),
                    child: Image.asset("assets/images/face.png",)
                ),
                Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: grey,
                    ),
                    child: Image.asset("assets/images/apple.png",)
                )
              ],
            ),
            SizedBox(
              height: 34,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member", style: TextStyle(color: fWhite.withOpacity(0.3), fontSize: 14),),
                GestureDetector(
                    onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp())),
                    child: Text("Register now", style: TextStyle(color: fBlue, fontSize: 14),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
