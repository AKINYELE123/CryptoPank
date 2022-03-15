import 'package:cryptobank/constant/colors.dart';
import 'package:cryptobank/constant/newsdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsGist extends StatefulWidget {
  const NewsGist({Key? key, required this.inform, }) : super(key: key);
  final InformDetails inform;

  @override
  _NewsGistState createState() => _NewsGistState();
}

class _NewsGistState extends State<NewsGist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            Icons.share_rounded,
                            color: blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
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
                            Icons.bookmark_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]
            ),
                SizedBox(height: 30,),
                Container(
                  height: 400,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: blue,
                    image: DecorationImage(
                      image: AssetImage(widget.inform.image),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(height: 10,),
                Text(widget.inform.title, style: TextStyle(color: Colors.white, fontSize: 24),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(widget.inform.time, style: TextStyle(
                            color: light.withOpacity(0.5),
                            fontSize: 16),),
                        SizedBox(width: 10,),
                        Text(widget.inform.source, style: TextStyle(color: blue, fontSize: 19),),
                      ],
                    ),
                    Text(widget.inform.type, style: TextStyle(
                        color: light.withOpacity(0.5),
                        fontSize: 16),),

                  ],
                ),
                SizedBox(height: 20,),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis posuere"
                    " non tellus dictum at. Integer eget sed amet nisi, elit odio. Feugiat vitae,"
                    " rutrum sed tincidunt sapien scelerisque adipiscing mauris. Ut aliquet a lectus "
                    "ultrices mauris diam tincidunt condimentum. At ut habitant sollicitudin consequat sed."
                    " Arcu natoque sem mauris suscipit placerat id. Sit proin in volutpat orci at mauris diam"
                    " ridiculus lacus. Mattis aliquam ut fames est nec pulvinar orci. Id lacus, senectus ut augue"
                    " sed elit. Libero cursus blandit consectetur diam maecenas volutpat. Varius vel mauris diam"
                    " tincidunt. Vel sit justo, lorem tincidunt consequat, ornare morbi sit. Venenatis leo vitae"
                    " semper sapien diam. Pretium purus sed consequat eget blandit nisi.Quis nunc elementum morbi"
                    " ut volutpat vitae. Enim accumsan vehicula amet maecenas ac eu faucibus nulla. Enim egestas"
                    " nisl, gravida magna risus urna magna quis. Vivamus nunc hac sit quisque. Penatibus tempus"
                    " ipsum nunc enim. Arcu posuere diam arcu, et platea leo, amet, ut viverra. Ipsum turpis sed"
                    " scelerisque sit et purus facilisis volutpat. Nisl diam feugiat dignissim risus tempor."
                    "Venenatis vel velit justo, amet nulla vel, sit quis. Purus sit lorem auctor odio pellentesque. "
                    "At sed morbi gravida etiam commodo ultrices viverra eu. Lectus fringilla dolor at fringilla. "
                    "Lacinia congue urna pellentesque nulla pellentesque. Varius tempor vitae mi enim semper faucibus"
                    " dolor venenatis integer. Congue quis justo turpis tellus elementum. Nulla tempor luctus sollicitudin"
                    " in pharetra. Mi.", textAlign: TextAlign.justify,style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 13),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
