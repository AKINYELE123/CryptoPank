import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/constant/newsdetails.dart';
import 'package:cryptobank/screens/homescreens/newsgist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsUpdate extends StatefulWidget {
  const NewsUpdate({Key? key}) : super(key: key);

  @override
  _NewsUpdateState createState() => _NewsUpdateState();
}

class _NewsUpdateState extends State<NewsUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: background,
        width: double.maxFinite,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: double.maxFinite,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: inform.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsGist(inform: inform[index],))),
                          child: Container(
                            height: 230,
                            width: double.maxFinite,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                      height: 125,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage(inform[index].image),
                                            fit: BoxFit.cover,)
                                      ),
                                      child: null),
                                ),
                                Positioned(
                                    top: 130,
                                    child: Center(
                                        child: Text(
                                          inform[index].title,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 30),
                                        ))),
                                Positioned(
                                    top: 180,
                                    right: 0,
                                    child: Center(
                                        child: Text(
                                          inform[index].type,
                                          style: TextStyle(
                                              color: light.withOpacity(0.5),
                                              fontSize: 16),
                                        ))),
                                Positioned(
                                    top: 180,
                                    left: 0,
                                    child: Center(
                                        child: Text(
                                          inform[index].time,
                                          style: TextStyle(
                                              color: light.withOpacity(0.5),
                                              fontSize: 16),
                                        ))),
                                Positioned(
                                    top: 180,
                                    left: 60,
                                    child: Center(
                                        child: Text(
                                          inform[index].source,
                                          style: TextStyle(color: blue, fontSize: 16),
                                        ))),
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
