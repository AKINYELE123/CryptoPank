import 'package:cryptobank/constant/coindetails.dart';
import 'package:cryptobank/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoinsSeeAll extends StatefulWidget {
  const CoinsSeeAll({Key? key}) : super(key: key);

  @override
  _CoinsSeeAllState createState() => _CoinsSeeAllState();
}

class _CoinsSeeAllState extends State<CoinsSeeAll> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
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
                        child: GestureDetector(
                          onTap: ()=>Navigator.pop(context),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text("Live Prices", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tue 25 Jan",textAlign: TextAlign.start, style: TextStyle(color: dirtyWhite, fontSize: 30),),
                      Image.asset("assets/images/candle.png")
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Welcome back!",textAlign: TextAlign.start, style: TextStyle(color: fWhite.withOpacity(0.3), fontSize: 14),)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: double.maxFinite,
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: coin.length,
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
              ],

            )
          ],
        ),
      ),
    );
  }
}
