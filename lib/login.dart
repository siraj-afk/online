import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online/signup.dart';
import 'package:online/start.dart';

import 'forget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.0.w,top: 40.h),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome\nBack!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
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
              SizedBox(height: 30.h,),
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
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility,color: Colors.green,)
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.only(left: 220..w),
                child: GestureDetector( onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Forget()));

                },
                  child: Text(
                    'Forgot Password?',

                    style: TextStyle(
                      color: Color(0xFFF73658),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,

                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.h,),
              GestureDetector( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Start()));
              },
                child: Container(
                  width: 317.w,
                  height: 55.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF73658),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Center(
                    child: Text('Login', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 60.h,),
              Padding(
                padding:  EdgeInsets.only(left: 110.0),
                child: Text('-OR Continue with-', style: TextStyle(
                  color: Color(0xFF575757),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding:  EdgeInsets.only(left: 50.0),
                child: Row(
                  children: [
                    Container(
                      width: 54.w,
                      height: 54.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFBF3F5),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFF73658)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Center(child: Image.asset('assets/google.png',width: 24.w,height: 24.h,)),
                    ),
                    SizedBox(width: 20.w,),
                    Container(
                      width: 54.w,
                      height: 54.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFBF3F5),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFF73658)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Center(child: Image.asset('assets/apples.png',width: 25.w,height: 25.h,)),
                    ),
                    SizedBox(width: 20.w,),
                    Container(
                      width: 54.w,
                      height: 54.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFBF3F5),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFF73658)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Center(child: Image.asset('assets/fb.png',width: 25.w,height: 25.h,)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h,),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 60.0),
                    child: Text('Create An Account', style: TextStyle(
                      color: Color(0xFF575757),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                  SizedBox(width: 5.w,),
                  GestureDetector( onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Signup()));
                  },
                    child: Text('Sign up', style: TextStyle(
                      color: Color(0xFFF73658),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
