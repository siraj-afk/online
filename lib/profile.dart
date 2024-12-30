import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 30.0.w,top: 20.h),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(onTap: (){
                      Navigator.of(context).pop();
                    },
                        child: Icon(Icons.arrow_back)),
                    SizedBox(width: 120.w,),
                    Text('Checkout',  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                    ),)
                  ],
                ),
                SizedBox(height: 20.h,),

                Center(
                  child: Container(
                    width: 103.w,
                    height: 98.h,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/pro.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Text('Personal Details', style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),),
                SizedBox(height: 20.h,),
                Text('Email Address', style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),),
                SizedBox(height: 10.h,),
                Container(
                  width: 327,
                  height: 48,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC7C7C7)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),

                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),


                    ),
                  ),
                ),
                SizedBox(height: 40.h,),
                Center(
                  child: Container(
                    width: 200.w,
                    height: 40.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF73658),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Center(
                      child: Text(
                        'update',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
