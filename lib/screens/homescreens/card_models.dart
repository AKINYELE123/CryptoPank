import 'package:cryptobank/constant/colors.dart';
import 'package:flutter/material.dart';

class CardModel {
  late String name;
  late String points;
  late String image;
  late String money;
  late Color color;

  CardModel({required this.name, required this.image, required this.money, required this.points, required this.color, });

}

List<CardModel> card = [
  CardModel(
    color: deepBlue,
      name: "Sales",
      image: "assets/images/cardpos.png",
      money: "\$500",
      points: "Total sales today",

  ),
  CardModel(
    color: Colors.lightGreen,
      name: "Profit",
      image: "assets/images/cardpos.png",
      money: "\$150",
      points: "Per day Ratio",

  ),
];