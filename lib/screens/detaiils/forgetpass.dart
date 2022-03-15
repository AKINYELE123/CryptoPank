import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/screens/detaiils/signup.dart';
import 'package:flutter/material.dart';

import '../../constant/clickbutton.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
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
                  "Forget Pass",
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
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                              fontSize: 14,
                            ))))),

            SizedBox(
              height: 304,
            ),
            AppButton(
              text: "Login",
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
