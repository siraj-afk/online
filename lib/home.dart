import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 20.0.w,top: 10.h),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.menu),
                  Padding(
                    padding:  EdgeInsets.only(left: 100.0.w),
                    child: Image.asset('assets/splash.png',width: 38.w,height: 31.h,),
                  ),
                  SizedBox(width: 10.w,),
                  Text('Stylish', style: TextStyle(
                    color: Color(0xFFF73658),
                    fontSize: 18,
                    fontFamily: 'Libre Caslon Text',
                    fontWeight: FontWeight.w700,
                    height: 0.01,
                  ),),
                  SizedBox(width: 90.w,),
                  Icon(Icons.map)
                ],
              ),
              SizedBox(height: 20.h,
              ),
              Container(
                width: 343,
                height: 40,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x0A000000),
                      blurRadius: 9,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),

                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    suffixIcon: Icon(Icons.mic,),
                    prefixIcon: Icon(Icons.search),
                   hintText: 'Search for product',suffixStyle:   TextStyle(
                      color: Color(0xFFBBBBBB),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Text('All Featured', style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
                  ),),
                  SizedBox(width: 100.w,),
                  Container(
                    width: 61,
                    height: 24,

                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 16,
                          offset: Offset(1, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 3.w),
                        Text('Sort',          style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        )),
                        SizedBox(width: 3.w),
                        Icon(Icons.compare_arrows)
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Container(
                    width: 61,
                    height: 24,

                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 16,
                          offset: Offset(1, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 3.w),
                        Text('Filter',          style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        )),
                        SizedBox(width: 1.w),
                        Icon(Icons.compare_arrows)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Container(
                width:double.infinity,
                height: 87.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
              ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 76.w,
                    height: 71.h,
                    child: Column(
                      children: [
                        Container(
                          width: 56.w,
                          height: 56.h,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(),
                          ),
                          child: Image.asset('assets/apples.png',fit: BoxFit.cover,),
                        ),


                      ],
                    ),
                  );
                }),

              )
            ],
          ),
        ),
      ),
    );
  }
}
