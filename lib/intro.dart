import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'login.dart';
class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final introKey = GlobalKey<IntroductionScreenState>();
  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const Login()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      allowImplicitScrolling: true,
      key: introKey,
      globalBackgroundColor: Colors.white,
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      done: const Text('Get Started',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFFF73658),
          fontSize: 18,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 0,
        ),),
      back:  Icon(Icons.arrow_back),
      skip:  Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: Text('Next',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFFF73658),
          fontSize: 18,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 0,
        ),),
      pages: [
        PageViewModel(decoration: PageDecoration(
            pageMargin:  EdgeInsets.only(top: 120)
        ),
            title: "Choose product",
            body: " 'Amet minim mollit non deserunt ullamco est\n sit "
                "aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',",
            image: Image.asset('assets/intro1.png')
        ),
        PageViewModel(decoration: PageDecoration(
          pageMargin:  EdgeInsets.only(top: 120)
        ),
        title: "Make Payment",
          body: " 'Amet minim mollit non deserunt ullamco est\n sit "
              "aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',",
          image: Image.asset('assets/intro2.png')
        ),
        PageViewModel(decoration: PageDecoration(
            pageMargin:  EdgeInsets.only(top: 120)
        ),
            title: "Get your Order",
            body: " 'Amet minim mollit non deserunt ullamco est\n sit "
                "aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',",
            image: Image.asset('assets/intro3.png')
        ),

      ],

    );
  }
}
