import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Search extends StatefulWidget {


  const Search({super.key, });

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Column(
          children: [
            Center(
              child: Container(
                width: 60,
                height: 60,
                color: Colors.black,
              ),
            ),
          ],
        )
      ),
    );
  }
}
