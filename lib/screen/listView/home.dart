import 'package:bag_flutter/screen/listView/bagHome.dart';
import 'package:bag_flutter/screen/listView/detailsPage.dart';
import 'package:bag_flutter/utils/mycolor.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> screens = [
    BagHome(),
    DetailPage(Id: 0,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.basicColor,
        title: const Text('Bottom Nav Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: MyColors.basicColor,
          selectedItemColor: Colors.white,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                backgroundColor:Colors.red,
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "Add"),
          ]),
      body: screens[index],
    );
  }
}