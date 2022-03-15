import 'package:cryptobank/constant/colors.dart';
import 'package:flutter/material.dart';

class CoinDetails {
  late String name;
  late String price;
  late String value;
  late String rate;
  late Color color;
  late String image;
  late String graph;
  late Color? text;

  CoinDetails({
    required this.name,
    required this.price,
    required this.value,
    required this.rate,
    required this.color,
    required this.image,
    required this.graph,
    required this.text,
});

}

List<CoinDetails> coin = [
  CoinDetails(
    name: "BTC",
    price: "\$24150.17",
    value: "2.73 BTC",
    rate: "-1.32",
    color: grey,
    image: "assets/images/btc.png",
    graph: "assets/images/btcgraph.png",
    text: btc,
  ),
  CoinDetails(
    name: "ETH",
    price: "\$5150.17",
    value: "8.73 ETH",
    rate: "-1.72",
    color: Colors.transparent,
    image: "assets/images/eth.png",
      graph: "assets/images/ethgraph.png",
    text: Colors.white
  ),
  CoinDetails(
    name: "XRP",
    price: "\$150.05",
    value: "10.73 XRP",
    rate: "-0.22",
    color: grey,
    image: "assets/images/xrp.png",
      graph: "assets/images/xrpgraph.png",
    text: xrp,
  ),
  CoinDetails(
    name: "LTC",
    price: "\$50.17",
    value: "220.73 LTC",
    rate: "-1.32",
    color:  Colors.transparent,
    image: "assets/images/lit.png",
      graph: "assets/images/litegraph.png",
      text: Colors.white
  ),
  CoinDetails(
    name: "BTC",
    price: "\$24150.17",
    value: "2.73 BTC",
    rate: "-1.32",
    color: grey,
    image: "assets/images/btc.png",
    graph: "assets/images/btcgraph.png",
    text: btc,
  ),
  CoinDetails(
      name: "ETH",
      price: "\$5150.17",
      value: "8.73 ETH",
      rate: "-1.72",
      color: Colors.transparent,
      image: "assets/images/eth.png",
      graph: "assets/images/ethgraph.png",
      text: Colors.white
  ),
  CoinDetails(
    name: "XRP",
    price: "\$150.05",
    value: "10.73 XRP",
    rate: "-0.22",
    color: grey,
    image: "assets/images/xrp.png",
    graph: "assets/images/xrpgraph.png",
    text: xrp,
  ),
  CoinDetails(
      name: "LTC",
      price: "\$50.17",
      value: "220.73 LTC",
      rate: "-1.32",
      color:  Colors.transparent,
      image: "assets/images/lit.png",
      graph: "assets/images/litegraph.png",
      text: Colors.white
  ),
];



