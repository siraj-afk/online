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
            padding:  EdgeInsets.only(left: 20.0.w,top: 10.h),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back),
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
                SizedBox(height: 20.h,),
                Text('Password', style: TextStyle(
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
                SizedBox(height: 10.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 220.0),
                  child: Text(
                    'Change Password',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFF73658),
                      fontSize: 12,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: 327,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFC4C4C4),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Text('Business Addrtess Details', style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),),
                SizedBox(height: 20.h,),
                Text('Pincode', style: TextStyle(
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
                SizedBox(height: 20.h,),
                Text('Address', style: TextStyle(
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
                SizedBox(height: 20.h,),
                Text('City', style: TextStyle(
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
                SizedBox(height: 20.h,),
                Text('State', style: TextStyle(
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
                SizedBox(height: 20.h,),
                Text('Country', style: TextStyle(
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
                SizedBox(height: 20.h,),
                Container(
                  width: 327,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFC4C4C4),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Text('Business Account Details', style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),),
                SizedBox(height: 20.h,),
                Text('Bank Account Number', style: TextStyle(
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
                SizedBox(height: 20.h,),
                Text("Account Holders's Name ", style: TextStyle(
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
                SizedBox(height: 20.h,),
                Text('IFSC Code', style: TextStyle(
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
                SizedBox(height: 20.h,),
                Container(
                  width: 327.w,
                  height: 52.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF73658),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Center(child: Text('Save', style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                    letterSpacing: 0.07,
                  ),)),
                ),
                SizedBox(height: 40.h,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
