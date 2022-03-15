import 'package:flutter/material.dart';
import 'package:cryptobank/constant/colors.dart';

class InformDetails {
  late String title;
  late String time;
  late String type;
  late String source;
  late String image;


  InformDetails({
    required this.title,
    required this.time,
    required this.type,
    required this.source,
    required this.image
  });

}

List<InformDetails> inform = [
  InformDetails(
      title: "Fall of bitcoin",
      time: "4 hours",
      type: "BTC",
      source: "Binance",
      image: "assets/images/general.png"
  ),
  InformDetails(
      title: "Rise of Ethereum",
      time: "6 hours",
      type: "ETH",
      source: "Binance",
      image: "assets/images/general.png"
  ),
  InformDetails(
      title: "Why you should buy USDT",
      time: "2 days",
      type: "USDT",
      source: "Binance",
      image: "assets/images/general.png"
  ),
  InformDetails(
      title: "Doge the shocker",
      time: "23 hours",
      type: "Doge",
      source: "Binance",
      image: "assets/images/general.png"
  ),
  InformDetails(
      title: "Bitcoin",
      time: "4 hours",
      type: "BTC",
      source: "Binance",
      image: "assets/images/general.png"
  ),
];



