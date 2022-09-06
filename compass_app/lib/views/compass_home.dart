import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
class CompassHome extends StatefulWidget {
  CompassHome({Key? key}) : super(key: key);

  @override
  State<CompassHome> createState() => _CompassHomeState();
}

class _CompassHomeState extends State<CompassHome> {
    double? heading=0;
    void initState() {
    // TODO: implement initState
    super.initState();
    FlutterCompass.events!.listen((event) {setState(() {
      heading=event.heading;
    });});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
      backgroundColor: Colors.black,
     centerTitle: true,
        title: Text("Compass", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text("${heading!.ceil()}°",style: TextStyle(color: Colors.white,fontSize: 30),),
         SizedBox(height: 55,),
         Padding(padding: EdgeInsets.all(28),
         child: Stack(
           alignment: Alignment.center,
           children: [
             Image.asset("assets/images/cadrant.png"),
             Transform.rotate(angle: ((heading ?? 0)*(pi/-180)* -1),
             child: Image.asset("assets/images/compass.png",scale: 1.1,),
             )
           ],
         ),
         ),
         
       ],
      ),
    );
  }
}