import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:swiper_project/cubeswiper.dart';

class ConcentricSwiperScreen extends StatefulWidget {
  @override
  _ConcentricSwiperScreenState createState() => _ConcentricSwiperScreenState();
}

class _ConcentricSwiperScreenState extends State<ConcentricSwiperScreen> {
  List<String> msgs = [
    "Hello Everyone, Myself Atul Rathour",
    "I hope you all are doing good.",
    "Lets dive in guys."
  ];
  List<String> assets = [
    "assets/lotties/hello.json",
    "assets/lotties/hope.json",
    "assets/lotties/start.json"
  ];

  bool trigger = false;

  var headingStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
  );
  var normalStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ConcentricPageView(
        colors: const <Color>[Colors.blue, Colors.yellow, Colors.purple],
        itemCount: 3, // null = infinity
        physics: const NeverScrollableScrollPhysics(),
        onFinish: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CubeSliderScreen()))
        },
        itemBuilder: (int index, double value) {
          return Center(
              child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: size.width,
                height: size.height,
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 50,
                child: Center(
                  child: Lottie.asset(assets[index], width: 350),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 420,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      msgs[index],
                      textAlign: TextAlign.center,
                      style: headingStyle,
                    ),
                  ),
                ),
              ),
            ],
          ));
        },
      ),
    );
  }
}
