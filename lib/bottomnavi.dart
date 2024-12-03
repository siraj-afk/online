import 'package:flutter/material.dart';

import 'package:online/home.dart';
import 'package:online/Wishlist.dart';
import 'setting.dart';
import 'package:online/Search.dart';

class Bottomnavi extends StatefulWidget {
  const Bottomnavi({super.key});

  @override
  State<Bottomnavi> createState() => _BottomnaviState();
}

class _BottomnaviState extends State<Bottomnavi> {
  final screens = [Home(),Whishlist(),Search(),Setting()];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(

          showUnselectedLabels: false,showSelectedLabels: false,onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
          items: [
            BottomNavigationBarItem(icon: Column(
              children: [
                Icon(Icons.home,color: currentIndex==0?Colors.green:Colors.black,),
                Text('home', style: TextStyle(
                  color: currentIndex==0?Colors.green:Colors.grey,
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),)
              ],
            ), label: "home"),
            BottomNavigationBarItem(icon: Column(
              children: [
                Icon(Icons.heart_broken,color: currentIndex==1?Colors.green:Colors.black,),
                Text('Whishlist', style: TextStyle(
                  color: currentIndex==1?Colors.green:Colors.grey,
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),)
              ],
            ), label: "home"),

            BottomNavigationBarItem(icon: Column(
              children: [
                Icon(Icons.search,color: currentIndex==2?Colors.green:Colors.black,),
                Text('Search', style: TextStyle(
                  color:currentIndex==2?Colors.green:Colors.grey,
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),)
              ],
            ), label: "home"),
            BottomNavigationBarItem(icon: Column(
              children: [
                Icon(Icons.settings,color: currentIndex==3?Colors.green:Colors.black,),
                Text('Setting', style: TextStyle(
                  color: currentIndex==3?Colors.green:Colors.grey,
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),)
              ],
            ), label: "home"),
          ],
        ),body: screens[currentIndex],
        );

  }
}
