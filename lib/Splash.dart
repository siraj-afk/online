import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'intro.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Intro()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 50.0.w),
              child: Image.asset('assets/splash.png',width: 124.w,height: 100.h,),
            ),
            SizedBox(width: 10.w,),
            Text('Stylish', style: TextStyle(
              color: Color(0xFFF73658),
              fontSize: 40,
              fontFamily: 'Libre Caslon Text',
              fontWeight: FontWeight.w700,
              height: 0.01,
            ),)
          ],
        ),
      ),

    );
  }
}
