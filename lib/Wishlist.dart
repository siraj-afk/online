import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:online/forget.dart';
class Whishlist extends StatefulWidget {
  const Whishlist({super.key});

  @override
  State<Whishlist> createState() => _WhishlistState();
}

class _WhishlistState extends State<Whishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 10.0.w,top: 10.h),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.menu),
                    Padding(
                      padding: EdgeInsets.only(left: 100.0.w),
                      child: Image.asset(
                        'assets/splash.png',
                        width: 38.w,
                        height: 31.h,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Stylish',
                      style: TextStyle(
                        color: Color(0xFFF73658),
                        fontSize: 18,
                        fontFamily: 'Libre Caslon Text',
                        fontWeight: FontWeight.w700,
                        height: 0.01,
                      ),
                    ),
                    SizedBox(
                      width: 90.w,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
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
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 343,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
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
                      suffixIcon: Icon(
                        Icons.mic,
                      ),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search for product',
                      suffixStyle: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      '52,082+ items',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0.07,
                      ),
                    ),
                    SizedBox(
                      width: 100.w,
                    ),
                    Container(
                      width: 61,
                      height: 24,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
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
                          Text('Sort',
                              style: TextStyle(
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
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 61,
                      height: 24,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
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
                          Text('Filter',
                              style: TextStyle(
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
                    StaggeredGrid.count(
            crossAxisCount: 4,

            children:  [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1, child:Card(
                  child: Container(
                  width: 164.w,
                  height: 245.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 2,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 164,
                          height: 136,
                          child: Image.asset(
                            'assets/new.png',
                            fit: BoxFit.fill,
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Women Printed Kurta',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                          'Neque porro quisquam est qui \ndolorem ipsum quia',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('₹1500',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(height: 10.h,),


                      Row(
                        children: [
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
                          Text( '56890',
                            style: TextStyle(
                              color: Color(0xFFA4A9B3),
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0.16,
                            ),)
                        ],
                      )
                    ],
                  ),
                              ),
                ) ,
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Card(
                  child: Container(
                    width: 163.w,
                    height: 305.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 2,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 163.w,
                            height: 196.h,
                            child: Image.asset(
                              'assets/mask.png',
                              fit: BoxFit.fill,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Women Printed Kurta',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0.11,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                            'Neque porro quisquam est qui \ndolorem ipsum quia',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text('₹1500',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(height: 10.h,),

                        Row(
                          children: [
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
                            Text( '56890',
                              style: TextStyle(
                                color: Color(0xFFA4A9B3),
                                fontSize: 10,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0.16,
                              ),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),


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
