import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0.w, top: 10.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0.w),
                      child: CircleAvatar(
                          backgroundColor: Colors.white24,
                          child: Icon(Icons.shopping_cart)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                CarouselSlider(
                  items: [
                    Image.asset('assets/shoe1.png'),
                    Image.asset('assets/shoess.png'),
                    Image.asset('assets/ad1.png'),
                  ],
                  options: CarouselOptions(
                    height: 210,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.8,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Size: 7UK',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0.08,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 32.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.50, color: Color(0xFFF97189)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '6 UK',
                          style: TextStyle(
                            color: Color(0xFFF97189),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0.08,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 50.w,
                      height: 32.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.50, color: Color(0xFFF97189)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '67UK',
                          style: TextStyle(
                            color: Color(0xFFF97189),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0.08,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 50.w,
                      height: 32.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.50, color: Color(0xFFF97189)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '8 UK',
                          style: TextStyle(
                            color: Color(0xFFF97189),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0.08,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 50.w,
                      height: 32.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.50, color: Color(0xFFF97189)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '9 UK',
                          style: TextStyle(
                            color: Color(0xFFF97189),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0.08,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 50.w,
                      height: 32.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.50, color: Color(0xFFF97189)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '10 UK',
                          style: TextStyle(
                            color: Color(0xFFF97189),
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0.08,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Nike Sneakers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Vision Alta mens Shoes Size (All Colours',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '56,890',
                      style: TextStyle(
                        color: Color(0xFFA4A9B3),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0.16,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Text(
                      '₹2499',
                      style: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        height: 0.11,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      '40%Off',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFE735C),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0.16,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Product Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: 343.w,
                  child: Text(
                    'Perhaps the most iconic sneaker of all-time, this original "Chicago"? '
                    'colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan,'
                    ' the shoe has stood the test of time,'
                    ' becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Container(
                      width: 97.w,
                      height: 24.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF828282)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 3.w,),
                          Icon(Icons.location_pin,color: Color(0xFF828282),size: 15,),
                          SizedBox(width: 2.w,),
                          Text('Nearest Store',  style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      width: 46.w,
                      height: 24.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF828282)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 3.w,),
                          Icon(Icons.lock,color: Color(0xFF828282),size: 15,),
                          SizedBox(width: 2.w,),
                          Text('VIP',  style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      width: 97.w,
                      height: 24.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF828282)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 3.w,),
                          Icon(Icons.keyboard_return,color: Color(0xFF828282),size: 15,),
                          SizedBox(width: 2.w,),
                          Text('Return Policy',  style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),

                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Stack(
                      children:[

                        Container(
                        width: 136.w,
                        height: 36.h,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [Color(0xFF3E92FF), Color(0xFF0B3689)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(4),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding:  EdgeInsets.only(left: 23.0),
                            child: Text('Go to Cart', style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0.08,
                            ),),
                          ),
                        ),
                      ),
                        Padding(
                          padding:  EdgeInsets.only(bottom: 20.0),
                          child: Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [Color(0xFF3E92FF), Color(0xFF0B3689)],
                              ),
                              shape: OvalBorder(),
                            ),
                            child: Center(child: Icon(Icons.shopping_cart,color: Colors.white,)),
                          ),
                        ),
                      ]
                    ),
                    SizedBox(width: 10.w,),
                    Stack(
                        children:[

                          Container(
                            width: 136.w,
                            height: 36.h,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-0.00, -1.00),
                                end: Alignment(0, 1),
                                colors:  [Color(0xFF70F8A8), Color(0xFF31B669)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(4),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.only(left: 23.0),
                                child: Text('Buy Now', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0.08,
                                ),),
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(bottom: 20.0),
                            child: Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(-0.00, -1.00),
                                  end: Alignment(0, 1),
                                  colors:  [Color(0xFF70F8A8), Color(0xFF31B669)],
                                ),
                                shape: OvalBorder(),
                              ),
                              child: Center(child: Icon(Icons.compress,color: Colors.white,)),
                            ),
                          ),
                        ]
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: 350.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFCCD4),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.0.w,top: 10.h),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivery in', style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,

                        ),),
                        SizedBox(height: 10.h,),
                        Text('1 within Hour',  style: TextStyle(
                          color: Color(0xFF010101),
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.04,
                        ),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Container(
                      width: 172.w,
                      height: 48.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Icon(Icons.remove_red_eye_outlined),
                            SizedBox(width: 5,),
                            Text('View Similar', style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0.08,
                            ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      width: 172.w,
                      height: 48.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Icon(Icons.remove_red_eye_outlined),
                            Text('View Similar', style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0.08,
                            ),)
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
                SizedBox(height: 20.h,),
                Text('Simnilar To',  style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0.06,
                ),),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Text(
                      '282+ items',
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
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 170 / 240,
                  shrinkWrap: true,
                  children: List.generate(2, (index) {
                    return Card(
                      child: Container(
                        width: 170,
                        height: 241,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 170,
                                height: 120,
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
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹2499',
                                  style: TextStyle(
                                    color: Color(0xFFBBBBBB),
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w300,
                                    height: 0.11,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Text(
                                  '40%Off',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFFE735C),
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    height: 0.16,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  '56890',
                                  style: TextStyle(
                                    color: Color(0xFFA4A9B3),
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    height: 0.16,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
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
