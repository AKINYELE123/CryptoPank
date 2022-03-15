import 'package:cryptobank/constant/clickbutton.dart';
import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/screens/verify/verifymenu.dart';
import 'package:flutter/material.dart';

class VerifyDocs extends StatefulWidget {
  const VerifyDocs({Key? key}) : super(key: key);

  @override
  _VerifyDocsState createState() => _VerifyDocsState();
}

class _VerifyDocsState extends State<VerifyDocs> {
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
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white, width: 1.0),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text("Verify Account", style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            SizedBox(height: 36,),
            Container(
                width: 260,
                child: Text("You’ve got some options, But you don’t always have to be stressed", style: TextStyle(color: Colors.white.withOpacity(0.3)),)),
            SizedBox(height: 30,),
            Center(child: Image.asset("assets/images/Verificatione.png")),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyMenu())),
              child: AppButton(
                text: "Verify new Document",
              ),
            )
          ],
        ),
      ),
    );
  }
}
