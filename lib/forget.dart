import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 30.0,top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Forget\npassword?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),SizedBox(height: 40.h,),
              Container(
                  width: 317.w,
                  height: 55.h,
                  decoration: ShapeDecoration(
                      color: Color(0xFFF3F3F3),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFA8A8A9)),
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',suffixStyle: TextStyle( color: Color(0xFF676767),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),),
                  )),
              SizedBox(height: 40.h,),
              Text(' We Will Send You A Message To Set Or Reset\nYourNewPassword', style: TextStyle(
                color: Color(0xFFFF4B26),
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,

              ),),
              SizedBox(height: 40.h,),
              Container(
                width: 317.w,
                height: 55.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFF73658),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                child: Center(
                  child: Text('Submit', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
