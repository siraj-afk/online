import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online/toastmsg.dart';

import 'home.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 30.0.w,top: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username or Email',
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
                    child: TextField(controller: email,
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
                  child: TextField(controller: password,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.visibility,color: Colors.green,)
                    ),
                  ),
                ),
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
                        hintText: 'Confirm Password',
                        suffixIcon: Icon(Icons.visibility,color: Colors.green,)
                    ),
                  ),
                ),
                SizedBox(height: 40.h,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'By clicking the ',
                        style: TextStyle(
                          color: Color(0xFF676767),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: Color(0xFFFF4B26),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ' button, you agree \nto the public offer',
                        style: TextStyle(
                          color: Color(0xFF676767),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.h,),
                GestureDetector( onTap: (){
                  firebaseAuth
                      .createUserWithEmailAndPassword(
                      email: email.text, password: password.text)
                      .then((value) => {
                    ToastMessage().toastmessage(message: 'Successfully registerd'),
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Home()))
                  })
                      .onError((error, stackTrace) => ToastMessage()
                      .toastmessage(message: error.toString()));
                },

                  child: Container(
                    width: 317.w,
                    height: 55.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF73658),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Center(
                      child: Text('Create Account', style: TextStyle(
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
                      child: Text('I Already have an account', style: TextStyle(
                        color: Color(0xFF575757),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                    SizedBox(width: 5.w,),
                    Text('Log in', style: TextStyle(
                      color: Color(0xFFF73658),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),)
                  ],
                )

              ],

            ),
          ),
        ),
      ),
    );

  }

}
