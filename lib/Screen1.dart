import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Screen2.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.only(left: 20.0.w,top:20.h),
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(width: 100.w,),
                  Text('Checkout', style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
                  ),)
                ],
              ),
              SizedBox(height: 10.h,),
              Container(
                width: 375,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFC5C5C5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 3.w,),
                  Text('Delivery Address', style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                  ),)
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Container(
                    width: 241.w,
                    height: 79.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 14,
                          offset: Offset(0, 6),
                          spreadRadius: -8,
                        ),BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 9,
                          offset: Offset(0, -4),
                          spreadRadius: -7,
                        )
                      ],
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: 8.0.w),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 200.0,top: 2.h),
                            child: Icon(Icons.note_alt_outlined),
                          ),
                          Text('Address:', style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,

                          ),),
                          SizedBox(height: 2.h,),
                          Text("216 St Paul's RD, London N1 2LL, UK\nContact: +44-784232", style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,

                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  Container(
                    width: 78,
                    height: 79,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 14,
                          offset: Offset(0, 6),
                          spreadRadius: -8,
                        ),BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 9,
                          offset: Offset(0, -4),
                          spreadRadius: -7,
                        )
                      ],
                    ),
                    child: Center(child: Icon(Icons.add_box_outlined)),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Text('Shopping List',  style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0.11,
              ),),
              SizedBox(height: 20.h,),
              GestureDetector( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2()));
              },
                child: Container(
                  width: 331.w,
                  height: 191.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 14,
                        offset: Offset(0, 6),
                        spreadRadius: -8,
                      ),BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 9,
                        offset: Offset(0, -4),
                        spreadRadius: -7,
                      )
                    ],
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 8.0,top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 130.53.w,
                              height: 125.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                              ),
                              child: Image.asset('assets/mask.png',fit: BoxFit.fill,),
                            ),
                            SizedBox(width: 8.w,),
                            Padding(
                              padding:  EdgeInsets.only(bottom:  30.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Womens Casual Wear',          style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,

                                  ),
                                  ),
                                  SizedBox(height: 10.h,),
                                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Variations: ',          style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,

                                      ),
                                      ),
                                      SizedBox(width: 4,),
                                      Container(
                                        width: 39,
                                        height: 17,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.30, color: Color(0xFF0D0808)),
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                      ),
                                        child: Center(child: Text('Black', style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          height: 0.22,
                                        ),)),

                                      ),
                                      SizedBox(width: 4.w,),
                                      Container(
                                        width: 39,
                                        height: 17,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.30, color: Color(0xFF0D0808)),
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                        ),
                                        child: Center(child: Text('Red', style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          height: 0.22,
                                        ),)),

                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    children: [
                                      Text('4.8'),
                                      SizedBox(width: 2.w,),
                                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                                      SizedBox(width: 2.w,),
                                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                                      SizedBox(width: 2.w,),
                                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                                      SizedBox(width: 2.w,),
                                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                                      SizedBox(width: 2.w,),
                                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                                      SizedBox(width: 5.w,),

                                    ],
                                  ),
                                  SizedBox(height: 5.h,),
                                  Row(
                                    children: [
                                      Container(
                                        width: 84,
                                        height: 29,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.30, color: Color(0xFFCACACA)),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                        child: Center(child: Text('\$ 34.00', style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          height: 0.09,
                                        ),)),
                                      ),
                                      SizedBox(width: 5.w,),
                                      Column(
                                        children: [
                                          Text('upto 28%off',  style: TextStyle(
                                            color: Color(0xFFEA3030),
                                            fontSize: 8,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),),
                                          Text('\$67.00', style: TextStyle(
                                            color: Color(0xFFA6A6A6),
                                            fontSize: 12,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),)
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Container(
                          width: 311,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFBBBBBB),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Order (1) :',style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0.15,
                            ),),
                            Padding(
                              padding:  EdgeInsets.only(right: 10.0),
                              child: Text('\$ 34.00',          style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0.15,
                              ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                width: 331.w,
                height: 191.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 14,
                      offset: Offset(0, 6),
                      spreadRadius: -8,
                    ),BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 9,
                      offset: Offset(0, -4),
                      spreadRadius: -7,
                    )
                  ],
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 8.0,top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 130.53.w,
                            height: 125.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                            ),
                            child: Image.asset('assets/mask.png',fit: BoxFit.fill,),
                          ),
                          SizedBox(width: 8.w,),
                          Padding(
                            padding:  EdgeInsets.only(bottom:  30.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Womens Casual Wear',          style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,

                                ),
                                ),
                                SizedBox(height: 10.h,),
                                Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Variations: ',          style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,

                                    ),
                                    ),
                                    SizedBox(width: 4,),
                                    Container(
                                      width: 39,
                                      height: 17,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.30, color: Color(0xFF0D0808)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Center(child: Text('Black', style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        height: 0.22,
                                      ),)),

                                    ),
                                    SizedBox(width: 4.w,),
                                    Container(
                                      width: 39,
                                      height: 17,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.30, color: Color(0xFF0D0808)),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      child: Center(child: Text('Red', style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        height: 0.22,
                                      ),)),

                                    ),

                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Row(
                                  children: [
                                    Text('4.8'),
                                    SizedBox(width: 2.w,),
                                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                                    SizedBox(width: 2.w,),
                                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                                    SizedBox(width: 2.w,),
                                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                                    SizedBox(width: 2.w,),
                                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                                    SizedBox(width: 2.w,),
                                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                                    SizedBox(width: 5.w,),

                                  ],
                                ),
                                SizedBox(height: 5.h,),
                                Row(
                                  children: [
                                    Container(
                                      width: 84,
                                      height: 29,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.30, color: Color(0xFFCACACA)),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                      child: Center(child: Text('\$ 34.00', style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        height: 0.09,
                                      ),)),
                                    ),
                                    SizedBox(width: 5.w,),
                                    Column(
                                      children: [
                                        Text('upto 28%off',  style: TextStyle(
                                          color: Color(0xFFEA3030),
                                          fontSize: 8,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                        ),),
                                        Text('\$67.00', style: TextStyle(
                                          color: Color(0xFFA6A6A6),
                                          fontSize: 12,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Container(
                        width: 311,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFBBBBBB),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Order (1) :',style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0.15,
                          ),),
                          Padding(
                            padding:  EdgeInsets.only(right: 10.0),
                            child: Text('\$ 34.00',          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0.15,
                            ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
