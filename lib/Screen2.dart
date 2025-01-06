import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:online/toastmsg.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'Screen1.dart';

class Screen2 extends StatefulWidget {
  final String name;
  final String description;
  final String offer;
  final String price;
  final String discount;
  final List<dynamic> image;
  const Screen2({super.key,
    required this.name,
    required this.description,
    required this.offer,
    required this.price,
    required this.discount,
    required this.image});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final date = DateTime.now().add(Duration(days: 7));
  final firestore = FirebaseFirestore.instance.collection('order');

  void handlePaymentErrorResponse(PaymentFailureResponse response) {
    /*
    * PaymentFailureResponse contains three values:
    * 1. Error Code
    * 2. Error Description
    * 3. Metadata
    * */
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) async {
    final id =
    DateTime.now().microsecondsSinceEpoch.toString();
    firestore
        .doc(id)

        .set({

      "stutus":"Order Placed",
      'date':
      '${date.day.toString()} ${DateFormat('MMM').format(date)} ${date.year.toString()}',
      "name": widget.name.toString(),
      "image": widget.image,


      "price": widget.price.toString(),
      "offer": widget.offer.toString(),
      "discount": widget.discount.toString()
    }).then(
          (value) {

      },
    ).onError(
          (error, stackTrace) {
        ToastMessage().toastmessage(message: error.toString());
      },
    );

    showDialog(
      context: context,
      builder: (context) {
        Future.delayed(Duration(seconds: 3), () {
          Navigator.of(context).pop();
        });

        return AlertDialog(
            title: CircleAvatar(
              backgroundColor: Color(0xFFF73658),
              radius: 40.r,
              child: Center(
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                ),
              ),
            ),
            content: Text(
              'Payment done successfully.',
              style: GoogleFonts.montserrat(
                color: Color(0xFF222222),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 0.14,
              ),
            ));
      },
    ).then(
          (value) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => Screen1()));
      },
    );
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    showAlertDialog(
        context, "External Wallet Selected", "${response.walletName}");
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    // set up the buttons
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0.w, top: 20.h, right: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text(
                    'Shopping Bag',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                    ),
                  ),
                  Icon(Icons.favorite_border)
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 426.w,
                height: 163.h,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: 123.w,
                      height: 153.h,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Image.network(
                        widget.image[0],
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            widget.description,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 86,
                              height: 25,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF2F2F2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              child: Center(
                                  child: Text(
                                'Size 42',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              )),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              width: 86,
                              height: 25,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF2F2F2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              child: Center(
                                  child: Text(
                                'Qty 42',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Delivery by',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                letterSpacing: -0.30,
                              ),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                              '10 May 2XXX',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -1.10,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  Icon(Icons.airplane_ticket_outlined),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Apply Coupons',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.70,
                    ),
                  ),
                  SizedBox(
                    width: 180.w,
                  ),
                  Text(
                    'Select',
                    style: TextStyle(
                      color: Color(0xFFF73658),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.70,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
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
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Order Payment Details',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                  letterSpacing: -0.70,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Amounts',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.70,
                    ),
                  ),
                  Text(
                    widget.price,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    'Convenience',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.70,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    'Know More',
                    style: TextStyle(
                      color: Color(0xFFF73658),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    'Apply Coupon',
                    style: TextStyle(
                      color: Color(0xFFE91611),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery fee',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.70,
                    ),
                  ),
                  Text(
                    'Free',
                    style: TextStyle(
                      color: Color(0xFFF73658),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
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
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Total',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.70,
                    ),
                  ),
                  Text(
                    widget.price,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    'EMI Available',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.70,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    'Details',
                    style: TextStyle(
                      color: Color(0xFFF73658),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(widget.price, style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),),
                      Text(
                        'View Details',
                        style: TextStyle(
                          color: Color(0xFFF73658),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),)
                    ],
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  GestureDetector(onTap: (){
    Razorpay razorpay = Razorpay();
    var options = {
    'key': 'rzp_test_gKANZdsNdLqaQs',
    'amount': 100,
    'name': 'Acme Corp.',
    'description': 'Fine T-Shirt',
    'retry': {'enabled': true, 'max_count': 1},
    'send_sms_hash': true,
    'prefill': {
    'contact': '8888888888',
    'email': 'test@razorpay.com'
    },
    'external': {
    'wallets': ['paytm']
    }
    };
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR,
    handlePaymentErrorResponse);
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS,
    handlePaymentSuccessResponse);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET,
    handleExternalWalletSelected);
    razorpay.open(options);
    },

                    child: Container(
                      width: 219,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF73658),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Center(child: Text('Proceed to Payment', style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w100,
                        height: 0.08,
                        letterSpacing: -0.41,
                      ),)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
