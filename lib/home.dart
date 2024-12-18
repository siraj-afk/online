import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online/Lspage.dart';
import 'package:online/Search.dart';
import 'package:online/profile.dart';

import 'Screen1.dart';
import 'result.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final editpost = TextEditingController();
  final firestore = FirebaseFirestore.instance.collection('banner').snapshots();
  final firestore1 =
      FirebaseFirestore.instance.collection('products').snapshots();
  final firestore2 =
      FirebaseFirestore.instance.collection('category').snapshots();

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
                      'All Featured',
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
                Container(
                  width: double.infinity,
                  height: 77.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: StreamBuilder<QuerySnapshot>(
                      stream: firestore2,
                      builder:
                          (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (!snapshot.hasData) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasError) {
                          return Center(
                            child: Text('error'),
                          );
                        }
                        if (snapshot.hasData) {
                          return ListView.builder(itemCount: snapshot.data!.docs.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => Screen1()));
                                  },
                                  child: GestureDetector(onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Lspage(
                                       products: snapshot.data!.docs[index]['products'],)));
                                  },
                                    child: Container(
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
                                            child: CircleAvatar(
                                              backgroundImage:
                                                  NetworkImage(snapshot.data!.docs[index]['thumbnail'].toString()),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 9.h,
                                          ),
                                          Text(
                                            snapshot.data!.docs[index]['name'].toString(),
                                            style: TextStyle(
                                              color: Color(0xFF21003D),
                                              fontSize: 10,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,
                                              height: 0.16,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        } else {
                          return SizedBox();
                        }
                      }),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: StreamBuilder<QuerySnapshot>(
                      stream: firestore,
                      builder:
                          (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (!snapshot.hasData) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasError) {
                          return Center(
                            child: Text('error'),
                          );
                        }
                        if (snapshot.hasData) {
                          return CarouselSlider.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (BuildContext context, int index,
                                int realIndex) {
                              return Container(
                                width: 343.w,
                                height: 189.h,
                                child: Image.network(snapshot
                                    .data!.docs[index]['image']
                                    .toString()),
                              );
                            },
                            options: CarouselOptions(
                              height: 210,
                              aspectRatio: 16 / 9,
                              viewportFraction: 1,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.8,
                              scrollDirection: Axis.horizontal,
                            ),
                          );
                        } else {
                          return SizedBox();
                        }
                      }),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 343.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4392F8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                'Deal of the Day',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0.08,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.timelapse,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '22h 55m 20s remaining',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    height: 0.11,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50.0),
                        child: Container(
                          width: 89.w,
                          height: 28.h,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'View all',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  height: 0.11,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                StreamBuilder<QuerySnapshot>(
                    stream: firestore1,
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (snapshot.hasError) {
                        return Center(
                          child: Text('error'),
                        );
                      }
                      if (snapshot.hasData) {
                        return SizedBox(
                          height: 600,
                          child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 200,
                                      childAspectRatio: 310 / 420,
                                      crossAxisSpacing: 5,
                                      mainAxisSpacing: 20),
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (BuildContext ctx, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (_) => Result(
                                            name: snapshot.data!.docs[index]['name']
                                                .toString(),
                                            description: snapshot.data!
                                                .docs[index]['description']
                                                .toString(),
                                            offer: snapshot.data!.docs[index]['offer']
                                                .toString(),
                                            price: snapshot
                                                .data!.docs[index]['price']
                                                .toString(),
                                            discount: snapshot
                                                .data!.docs[index]['discount']
                                                .toString(),
                                            image: snapshot.data!.docs[index]
                                                ['image'])));
                                  },
                                  child: Container(
                                    width: 170,
                                    height: 241,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: 170,
                                            height: 120,
                                            child: Image.network(
                                              snapshot
                                                  .data!.docs[index]['image'][0]
                                                  .toString(),
                                              fit: BoxFit.cover,
                                            )),
                                        SizedBox(
                                          height: 12.h,
                                        ),
                                        Text(
                                          snapshot.data!.docs[index]['name']
                                              .toString(),
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
                                            snapshot.data!
                                                .docs[index]['description']
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400,
                                            )),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                            snapshot.data!.docs[index]['offer']
                                                .toString(),
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
                                              snapshot
                                                  .data!.docs[index]['price']
                                                  .toString(),
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
                                              snapshot
                                                  .data!.docs[index]['discount']
                                                  .toString(),
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
                        );
                      } else {
                        return SizedBox();
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
