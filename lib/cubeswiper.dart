import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:swiper_project/liquidswiper.dart';
import 'package:swiper_project/parallax.dart';
import 'package:swiper_project/profile.dart';

class CubeSliderScreen extends StatefulWidget {
  @override
  _CubeSliderScreenState createState() => _CubeSliderScreenState();
}

class _CubeSliderScreenState extends State<CubeSliderScreen> {
  var headingStyle = GoogleFonts.supermercadoOne(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
  );
  var normalStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 0.0),
        child: CarouselSlider(
          // slideIndicator: CircularSlideIndicator(
          //   currentIndicatorColor: Colors.white,
          //   padding: const EdgeInsets.only(bottom: 20),
          // ),
          slideTransform: const CubeTransform(),
          unlimitedMode: true,
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: Hero(
                      tag: 'image',
                      child: Material(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 70,
                            backgroundImage:
                                AssetImage('assets/images/atul.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 390,
                    child: Center(
                      child: GestureDetector(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ),
                              ),
                          child: Lottie.asset('assets/lotties/tap.json',
                              height: 120)),
                    ),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      top: 500,
                      child: Center(
                          child: Text(
                        'Tap to know about me',
                        style: normalStyle,
                      )))
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  GlowText(
                    "Passion/Hobbies",
                    offset: const Offset(0, 0),
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 30)),
                  ),
                  Center(
                    child:
                        Lottie.asset('assets/lotties/hobby.json', width: 250),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  HomeScreen(),
                ],
              ),
              color: Colors.black,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
              ),
              child: LiquidSwipeScreen(),
            )
          ],
        ),
      ),
    );
  }
}
