import 'package:cryptobank/constant/clickbutton.dart';
import 'package:cryptobank/constant/colors.dart';
import 'package:flutter/material.dart';

class TakePhoto extends StatefulWidget {
  const TakePhoto({Key? key}) : super(key: key);

  @override
  _TakePhotoState createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {
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
            SizedBox(height: 70,),
            Center(child: Image.asset("assets/images/Verification.png")),
            SizedBox(height: 80,),
            GestureDetector(
              //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyMenu())),
              child: AppButton(
                text: "Take Photo",
              ),
            )
          ],
        ),
      ),
    );
  }
}
