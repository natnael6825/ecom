
import 'package:ecom/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoard extends StatelessWidget {
  final introkey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introkey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Wlcome",
          body:
              """hello there welocome to this shoopingsites app that ypu can by endless life spanfrom the univer using good karma.this will help you inlongest ypur life for more than you can image and allow you to ngest ypur life for more than you can image and allow you to""",
          image: Image.asset(
            "asset/image/s1.png",
            width: 300,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Wlcome 2",
          body:
              """hello there welocome to this shoopingsites app that ypu can by endless life spanfrom the univer using good karma.this will help you inlongest ypur life for more than you can image and allow you to ngest ypur life for more than you can image and allow you to""",
          image: Image.asset(
            "asset/image/s2.png",
            width: 300,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Wlcome 3",
          body:
              "hello there welocome to this shoopingsites app that ypu can by endless life spanfrom the univer using good karma.this will help you inlongest ypur life for more than you can image and allow you to",
          image: Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Image.asset(
              "asset/image/s3.png",
              width: 300,
            ),
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 50),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "Let's Shop",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor: Color.fromARGB(255, 121, 0, 169),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                )),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        "Back",
        style: TextStyle(fontWeight: FontWeight.w600, 
        color: Color.fromARGB(255, 121, 0, 169)),
      ),
      next: Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.bold,
         color: Color.fromARGB(255, 121, 0, 169)),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          activeColor: Colors.red,
          color: Colors.black,
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
          )),
    );
  }
}
