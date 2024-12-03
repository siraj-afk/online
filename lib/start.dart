import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online/bottomnavi.dart';

import 'home.dart';
class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset('assets/start.png',),
          Padding(
            padding:  EdgeInsets.only(top: 400.0),
            child: Container(
              width: double.infinity,
              height: 420.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Colors.black.withOpacity(0), Colors.black.withOpacity(0.6299999952316284)],
                )),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top:  100.0),
                    child: Text( 'You want\n Authentic, here\n you go!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 0.34,
                                    ),),
                  ),
                  SizedBox(height: 40.h,),
                  Text( 'Find it here, buy it now!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF2F2F2),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                      letterSpacing: 0.14,
                    ),),
                  SizedBox(height: 40.h,),
                  GestureDetector( onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Bottomnavi()));
                  },
                    child: Container(
                      width: 279.w,
                      height: 55.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF73658),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Center(
                        child: Text('Get Started',style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),),
                      ),
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
