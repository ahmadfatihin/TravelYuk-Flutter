import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/ui/pages/get_started_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/getStarted');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              // margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_logo.png'))),
            ),
            Text(
              'Travel Yuk',
              style: whiteTextStyle.copyWith(
                  fontSize: 20, fontWeight: bold, letterSpacing: 5),
            ),
            TextLiquidFill(
              text: 'Loading ...',
              waveColor: kWhiteColor,
              boxBackgroundColor: Colors.blueAccent,
              textStyle: whiteTextStyle.copyWith(
                  fontSize: 40, fontWeight: extrabold, letterSpacing: 5),
              textAlign: TextAlign.center,
              waveDuration: Duration(seconds: 4),
              loadDuration: Duration(seconds: 5),
              // boxHeight: 300.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: DefaultTextStyle(
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: bold, letterSpacing: 4),
                child: AnimatedTextKit(
                  pause: Duration(milliseconds: 2500),
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText('Created By'),
                    TyperAnimatedText('Ahmad Fatihin'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
