import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online/profile.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0.w,top: 60.h),
          child: Column(
            children: [
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
              SizedBox(height: 30.h,),
              Text('User name', style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                height: 0,
              ),),
              SizedBox(height: 10.h,),

              SizedBox(height: 20.h,),
              Text('Email address', style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                height: 0,
              ),),
              SizedBox(height: 10.h,),

              SizedBox(height: 50.h,),
              Padding(
                padding:  EdgeInsets.only(left: 10.0),
                child: Container(
                  height: 60.h,
                  width: 300.w,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector( onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Profile()));
                      },
                          child: Icon(Icons.edit,size: 40,)),
                      Icon(Icons.update,size: 40,),
                      Icon(Icons.logout,size: 40,),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
