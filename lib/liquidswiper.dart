// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';

class LiquidSwipeScreen extends StatefulWidget {
  @override
  _LiquidSwipeScreenState createState() => _LiquidSwipeScreenState();
}

class _LiquidSwipeScreenState extends State<LiquidSwipeScreen>
    with SingleTickerProviderStateMixin {
  int flag = 8;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        upperBound: 1,
        lowerBound: 0.1,
        vsync: this,
        duration: const Duration(milliseconds: 2000))
      ..repeat(reverse: true);

    _controller.addListener(() {});
  }

  List<Color> _color = <Color>[
    const Color(0xff794afd),
    const Color(0xff64eda9),
    const Color(0xffe71c5e)
  ];
  List<Widget> pages = <Widget>[Screen1(), Screen2(), Screen3(), Screen4()];
  @override
  dispose() {
    _controller.dispose(); // you need this
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: LiquidSwipe(
        pages: pages,
        slideIconWidget: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(
            Icons.arrow_back_ios_rounded,
            size: 40,
          ),
        ),
        enableLoop: true,
        positionSlideIcon: 0.8,
        fullTransitionValue: 800,
        waveType: WaveType.liquidReveal,
        enableSideReveal: false,
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> with SingleTickerProviderStateMixin {
  int flag = 8;
  late AnimationController _controller;

  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        upperBound: 1,
        lowerBound: 0.1,
        vsync: this,
        duration: const Duration(milliseconds: 2000))
      ..repeat(reverse: true);

    _controller.addListener(() {});

    _animation = Tween(begin: Offset.zero, end: const Offset(0.01, 0.01))
        .animate(_controller);
  }

  @override
  dispose() {
    _controller.dispose(); // you need this
    super.dispose();
  }

  var headingStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
  );
  var normalStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
  );
  var contentStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
  );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: const Color(0xff794afd),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.38,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: SlideTransition(
                  position: _animation,
                  child: Container(
                    width: size.width * 0.9,
                    height: size.height * 0.38,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/school.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                child: Center(
                  child: Text("St. Xavier's High School, Powai.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 25.5,
                            letterSpacing: 5,
                            wordSpacing: 5,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                height: size.height * 0.27,
                width: size.width * 0.77,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 30.0,
                        offset: const Offset(10, 15),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      "I have done my schooling from St. Xavier's High School. It is located in Powai, Mumbai. I passed my SSC with 88.4 percentage.",
                      style: normalStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> with SingleTickerProviderStateMixin {
  int flag = 8;
  late AnimationController _controller;

  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        upperBound: 1,
        lowerBound: 0.1,
        vsync: this,
        duration: const Duration(milliseconds: 2000))
      ..repeat(reverse: true);

    _controller.addListener(() {});

    _animation = Tween(begin: Offset.zero, end: const Offset(0.01, 0.01))
        .animate(_controller);
  }

  @override
  dispose() {
    _controller.dispose(); // you need this
    super.dispose();
  }

  var headingStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
  );
  var normalStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
  );
  var contentStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
  );

  final TextStyle _textStyle = GoogleFonts.tenorSans(
      textStyle: const TextStyle(
    letterSpacing: 1.8,
    fontSize: 16,
  ));

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xff64eda9),
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            width: size.width * 0.9,
            height: size.height * 0.38,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: SlideTransition(
              position: _animation,
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.38,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/rjcollege.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Ramniranjan Jhunjunwala College, Ghatkopar.",
                textAlign: TextAlign.center,
                style: headingStyle,
              )),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            height: size.height * 0.27,
            width: size.width * 0.77,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 30.0,
                    offset: const Offset(10, 15),
                  )
                ]),
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Completed my HSC succesfully with science stream from RJ College which is located in Ghatkopar, Mumbai with 76.42 percentage.',
                    style: normalStyle,
                    textAlign: TextAlign.center,
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> with SingleTickerProviderStateMixin {
  int flag = 8;
  late AnimationController _controller;

  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        upperBound: 1,
        lowerBound: 0.1,
        vsync: this,
        duration: const Duration(milliseconds: 2000))
      ..repeat(reverse: true);

    _controller.addListener(() {});

    _animation = Tween(begin: Offset.zero, end: const Offset(0.01, 0.01))
        .animate(_controller);
  }

  @override
  dispose() {
    _controller.dispose(); // you need this
    super.dispose();
  }

  var normalStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
  );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xffe71c5e),
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            width: size.width * 0.9,
            height: size.height * 0.38,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: SlideTransition(
              position: _animation,
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.38,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/terna.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              "Terna Engineering College, Nerul.",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.5,
                    letterSpacing: 5,
                    wordSpacing: 5,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            height: size.height * 0.27,
            width: size.width * 0.77,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 30.0,
                    offset: const Offset(10, 15),
                  )
                ]),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Currently pursuing Computer Engineering from Terna College located in Nerul, Navi Mumbai. ",
                  textAlign: TextAlign.center,
                  style: normalStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> with SingleTickerProviderStateMixin {
  int flag = 8;

  @override
  dispose() {
    // you need this
    super.dispose();
  }

  var headingStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
  );
  var normalStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
  );
  var contentStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
  );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.yellow.shade200,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 280,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: size.height * 0.45,
                width: size.width * 0.77,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 30.0,
                        offset: const Offset(10, 15),
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/lti.png"),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "Looking forward to work in such an esteemed oraganization as LTI with all you guys.",
                          style: normalStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 80,
            child: Lottie.asset(
              "assets/lotties/thankyou.json",
              width: size.width,
              height: size.height * 0.35,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
