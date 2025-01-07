


import 'package:avatar_glow/avatar_glow.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online/result.dart';

import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_recognition_result.dart';


class Search extends StatefulWidget {


  const Search({super.key, });

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  SpeechToText _speechToText = SpeechToText();
  final search = TextEditingController();
  var islistening = true;
  bool _speechEnabled = true;

  /// This has to happen only once per app
  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    print('init');
    setState(() {});
  }

  /// Each time to start a speech recognition session
  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
    print('start');
  }

  /// Manually stop the active speech recognition session
  /// Note that there are also timeouts that each platform enforces
  /// and the SpeechToText plugin supports setting timeouts on the
  /// listen method.
  void _stopListening() async {
    print('stop');
    await _speechToText.stop();
    setState(() {});
  }

  /// This is the callback that the SpeechToText plugin calls when
  /// the platform returns recognized words.
  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      search.text = result.recognizedWords;
    });
  }

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  final firestore =
  FirebaseFirestore.instance.collection('products').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
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
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: search,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFBBBBBB),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(3),
                            child: AvatarGlow(
                              animate: islistening,
                              duration: Duration(milliseconds: 200),
                              glowColor: Colors.black,
                              repeat: true,
                              glowCount: 2,
                              curve: Curves.bounceIn,
                              glowShape: BoxShape.circle,
                              child: GestureDetector(
                                onTap: _speechToText.isNotListening
                                    ? _startListening
                                    : _stopListening,
                                child: CircleAvatar(
                                  radius: 5.r,
                                  backgroundColor: Colors.black,
                                  child: Center(
                                    child: Icon(
                                      _speechToText.isNotListening
                                          ? Icons.mic_off
                                          : Icons.mic,
                                      color: Color(0xFFBBBBBB),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          filled: true,
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w, color: Color(0xFFA8A8A9)),
                              borderRadius: BorderRadius.circular(6.r)),
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w, color: Color(0xFFA8A8A9)),
                              borderRadius: BorderRadius.circular(6.r)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w, color: Color(0xFFA8A8A9)),
                              borderRadius: BorderRadius.circular(6.r)),
                          hintText: 'Search any Product',
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xFFBBBBBB),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                          )),
                      validator: (search) {
                        if (search!.isEmpty) {
                          return 'type any thing';
                        }
                        return null;
                      },
                    ),
            ),
                  ),
                SizedBox(height: 40.h,),
                    Padding(
            padding: EdgeInsets.only(right: 8.0),
            child:  StreamBuilder<QuerySnapshot>(
                stream: firestore,
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
                            if(search.text.toLowerCase()==snapshot.data!.docs[index]['name']
                                .toString().toLowerCase()){
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
                            }else if(search.text.isEmpty){
                            return
                            GestureDetector(
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
                            );}
                          }),
                    );
                  } else {
                    return SizedBox();
                  }
                })
                    )
              ],
            ),
          ),
        )
      ),
    );
  }
}
