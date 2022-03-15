import 'package:cryptobank/constant/colors.dart';
import 'package:flutter/material.dart';



class AppButton extends StatelessWidget {

  String? text;


  AppButton(
      {Key? key,
        this.text,
        })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: blue
        ),
        child: Center(child: Text(text!, style: TextStyle(
            fontSize: 20,
            color: background,
            fontWeight: FontWeight.bold
        ),),
        )
    );
  }
}
