import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online/result.dart';
class Lspage extends StatefulWidget {

  final List<dynamic> products;
  const Lspage({super.key, required this.products, });

  @override
  State<Lspage> createState() => _LspageState();
}

class _LspageState extends State<Lspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 20.0.w,top: 20.h,right: 20.w),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 310 / 420,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 20),
                    itemCount: widget.products.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector( onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Result(
                            name: widget.products[index]['name'].toString(),
                            description:widget.products[index]['caption'].toString(),
                            offer: widget.products[index]['offer']
                                .toString(),
                            price: widget.products[index]['price']
                                .toString(),
                            discount: widget.products[index]['discount']
                                .toString(),
                            image:widget.products[index]
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
                                   widget.products[index]['image'][0].toString()
                                  )),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                widget.products[index]['name'].toString(),
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
                                 widget.products[index]['caption'].toString(),
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
                                 widget.products[index]['offer'],
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
                                   widget.products[index]['price'],
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
                                   widget.products[index]['discount'],
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
            ],
          ),
        ),
      ),
    );
  }
}
