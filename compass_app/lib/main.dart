import 'package:compass_app/views/lottie_home.dart';
import 'package:flutter/material.dart';



void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'MY_COMPASS_APP',
      debugShowCheckedModeBanner: false,
      home: LotteHome(),
    );
  }
}