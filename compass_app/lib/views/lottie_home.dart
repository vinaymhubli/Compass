import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'compass_home.dart';

class LotteHome extends StatefulWidget {
  LotteHome({Key? key}) : super(key: key);

  @override
  State<LotteHome> createState() => _LotteHomeState();
}

class _LotteHomeState extends State<LotteHome> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 6),
    (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CompassHome()));
    }
    );
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 600,
            width: 600,
            child: Lottie.asset("assets/images/com.json"),
            ),
            Text("Get Your Direction",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            
             ),
          ],
        )
      ),
    );
  }
}