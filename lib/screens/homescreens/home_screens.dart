import 'dart:ffi';

import 'package:cryptobank/constant/coindetails.dart';
import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/screens/homescreens/card_models.dart';
import 'package:cryptobank/screens/homescreens/coin_see_all.dart';
import 'package:cryptobank/screens/homescreens/newsupdate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptobank/constant/newsdetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: background,
        width: double.maxFinite,
        height: double.maxFinite,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: grey, width: 4)),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/images/female.png"),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: grey, width: 4)),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/menu.png"),
                          backgroundColor: background,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hello Lisa",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: dirtyWhite, fontSize: 30),
                      ),
                      Image.asset("assets/images/candle.png")
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Welcome back!",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: fWhite.withOpacity(0.3), fontSize: 14),
                    )),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 170,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: card.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 150,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: card[index].color),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 20,
                                top: 30,
                                child: Text(
                                  card[index].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 55,
                                child: Text(
                                  card[index].points,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 100,
                                child: Text(
                                  card[index].money,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                top: 30,
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: lightBlue),
                                  child: Image.asset(
                                    "assets/images/cardpos.png",
                                    width: 100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 38,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Live Prices",
                        style: TextStyle(color: dirtyWhite, fontSize: 17),
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: grey, width: 2),
                        ),
                        child: GestureDetector(
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CoinsSeeAll())),
                          child: Center(
                              child: Text(
                            "See all",
                            style: TextStyle(color: blue, fontSize: 13),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 480,
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          padding: null,
                          width: double.maxFinite,
                          decoration: BoxDecoration(color: coin[index].color),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: fakeBlack),
                                    child: Image.asset(
                                      coin[index].image,
                                      width: 100,
                                    ),
                                  )),
                              Positioned(
                                  top: 25,
                                  left: 100,
                                  child: Text(
                                    coin[index].name,
                                    style: TextStyle(
                                        color: coin[index].text,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Positioned(
                                  top: 60,
                                  left: 100,
                                  child: Text(
                                    coin[index].rate,
                                    style: TextStyle(
                                        color: light.withOpacity(0.5),
                                        fontSize: 15),
                                  )),
                              Positioned(
                                top: 20,
                                left: 180,
                                child: Image.asset(
                                  coin[index].graph,
                                  width: 100,
                                ),
                              ),
                              Positioned(
                                  top: 25,
                                  right: 10,
                                  child: Text(
                                    coin[index].price,
                                    style:
                                        TextStyle(color: light, fontSize: 20),
                                  )),
                              Positioned(
                                  top: 60,
                                  right: 10,
                                  child: Text(
                                    coin[index].value,
                                    style: TextStyle(
                                        color: light.withOpacity(0.5),
                                        fontSize: 15),
                                  )),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 10,
                          )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "News",
                        style: TextStyle(color: dirtyWhite, fontSize: 17),
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: grey, width: 2),
                        ),
                        child: GestureDetector(
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> NewsUpdate())),
                          child: Center(
                              child: Text(
                            "See all",
                            style: TextStyle(color: blue, fontSize: 13),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 400,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: double.maxFinite,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                    height: 100,
                                    width: double.maxFinite,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage(inform[index].image),
                                            fit: BoxFit.cover,)
                                      ),
                                    child: null
                                ),
                              ),
                              Positioned(
                                  top: 110,
                                  child: Center(
                                      child: Text(
                                    inform[index].title,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ))),
                              Positioned(
                                  top: 150,
                                  right: 0,
                                  child: Center(
                                      child: Text(
                                    inform[index].type,
                                    style: TextStyle(
                                        color: light.withOpacity(0.5),
                                        fontSize: 16),
                                  ))),
                              Positioned(
                                  top: 150,
                                  left: 0,
                                  child: Center(
                                      child: Text(
                                    inform[index].time,
                                    style: TextStyle(
                                        color: light.withOpacity(0.5),
                                        fontSize: 16),
                                  ))),
                              Positioned(
                                  top: 150,
                                  left: 60,
                                  child: Center(
                                      child: Text(
                                    inform[index].source,
                                    style: TextStyle(color: blue, fontSize: 16),
                                  ))),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
