import 'package:cryptobank/constant/clickbutton.dart';
import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/screens/detaiils/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? _value = false;
  bool? _value2 = false;
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
                  "Signup",
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
            Row(
              children: [
                Checkbox(value: _value,
                  onChanged: (value){
                    setState(() {
                      _value = value;
                    });
                  },
                  activeColor: fWhite,
                  checkColor: grey,
                ),
                Text("You agree with us", style: TextStyle(color: fWhite.withOpacity(0.3), fontSize: 14),)
              ],
            ),
            Row(
              children: [
                Checkbox(value: _value,
                  onChanged: (value){
                    setState(() {
                      _value2 = value;
                    });
                  },
                  activeColor: fWhite,
                  checkColor: grey,
                ),
                Text("Remind this account", style: TextStyle(color: fWhite.withOpacity(0.3), fontSize: 14),)
              ],
            ),
            SizedBox(
              height: 54,
            ),
            AppButton(
              text: "Login",
            ),
            SizedBox(
              height: 46,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already a member? ",
                  style:
                      TextStyle(color: fWhite.withOpacity(0.3), fontSize: 14),
                ),
                GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen())),
                    child: Text(
                      "Login now",
                      style: TextStyle(color: fBlue, fontSize: 14),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
