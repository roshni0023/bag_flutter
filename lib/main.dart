
import 'package:bag_flutter/screen/bag_login.dart';
import 'package:bag_flutter/screen/listView/detailsPage.dart';
import 'package:bag_flutter/screen/listView/bagHome.dart';
import 'package:bag_flutter/screen/listView/home.dart';
import 'package:flutter/material.dart';
import 'package:bag_flutter/screen/bag_splash.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BagHome(),
      routes: {
        'homePage': (context)=> HomePage(),
        'detailsPage': (context)=> DetailPage(Id: 0,),
      },
    );
  }
}