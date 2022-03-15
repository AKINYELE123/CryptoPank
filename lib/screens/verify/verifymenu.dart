import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/screens/verify/takephoto.dart';
import 'package:flutter/material.dart';

class VerifyMenu extends StatefulWidget {
  const VerifyMenu({Key? key}) : super(key: key);

  @override
  _VerifyMenuState createState() => _VerifyMenuState();
}

class _VerifyMenuState extends State<VerifyMenu> {
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
           FlatButton(text: "Identity Account",),
            SizedBox(height: 15,),
            FlatButton(text: "Drivers Lincense",),
            SizedBox(height: 15,),
            FlatButton(text: "Passport",)
          ],
        ),
      ),
    );
  }
}

class FlatButton extends StatelessWidget {
  String text;
  //final String image;
  FlatButton({
    Key? key,
    //required this.image,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>TakePhoto())),
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.maxFinite,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: grey,
        ),
        child: Row(
          children: [
            //Image.asset("assets/images/useroctagon.png"),
            Text(text, style: TextStyle(color: fWhite.withOpacity(0.4)),)
          ],
        ),
      ),
    );
  }
}
