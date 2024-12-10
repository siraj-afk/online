import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:online/forget.dart';
import 'package:online/profile.dart';

class Whishlist extends StatefulWidget {
  const Whishlist({super.key});

  @override
  State<Whishlist> createState() => _WhishlistState();
}

class _WhishlistState extends State<Whishlist> {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/new.png',
      'title': 'Women Printed Kurta',
      'description': 'Neque porro quisquam est qui \ndolorem ipsum quia',
      'price': '₹1500',
      'rating': 5,
      'reviews': '56890',
    },
    {
      'image': 'assets/mask.png',
      'title': 'Women Printed Kurta',
      'description': 'Neque porro quisquam est qui \ndolorem ipsum quia',
      'price': '₹1500',
      'rating': 5,
      'reviews': '56890',
    },
    {
      'image': 'assets/mask.png',
      'title': 'Women Printed Kurta',
      'description': 'Neque porro quisquam est qui \ndolorem ipsum quia',
      'price': '₹1500',
      'rating': 5,
      'reviews': '56890',
    },
    {
      'image': 'assets/mask.png',
      'title': 'Women Printed Kurta',
      'description': 'Neque porro quisquam est qui \ndolorem ipsum quia',
      'price': '₹1500',
      'rating': 5,
      'reviews': '56890',
    },
    // Add more items here...
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0.w, top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => Profile()));
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/pro.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
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
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child:
                MasonryGridView.builder(
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                  ),
                  itemCount: items.length,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
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
                          // Dynamic height for the image
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                            child: Image.asset(
                              item['image'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: index.isEven||index==0?150 + 0 * 20.0:150 + 2 * 20.0// Vary height dynamically

                          )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              item['title'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              item['description'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: null, // Allow text to determine height
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              item['price'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                ...List.generate(
                                  item['rating'],
                                      (starIndex) => Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  item['reviews'],
                                  style: TextStyle(
                                    color: Color(0xFFA4A9B3),
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
