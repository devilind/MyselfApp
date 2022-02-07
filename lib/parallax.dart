import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:swiper_project/writtencontent.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController pageController;
  double pageOffset = 0;

  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.7);
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page!;
      });
    });
  }

  var headingStyle = GoogleFonts.supermercadoOne(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.w800),
  );
  var normalStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
  );

  List<String> title = <String>[
    'Programming',
    'Technology',
    'Gaming',
    'Home Exercise',
    'Leisure Time'
  ];

  List<String> content = <String>[
    programming,
    development,
    gaming,
    gym,
    walking
  ];

  List<Map> paintings = [
    {
      'image': 'assets/images/programming.jpg',
    },
    {
      'image': 'assets/images/mouse.jpg',
    },
    {
      'image': 'assets/images/reyna.jpg',
    },
    {
      'image': 'assets/images/gym.jpg',
    },
    {
      'image': 'assets/images/walking.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 450,
            padding: const EdgeInsets.only(bottom: 30),
            child: PageView.builder(
                itemCount: paintings.length,
                controller: pageController,
                itemBuilder: (context, i) {
                  return Transform.scale(
                    scale: 1,
                    child: Container(
                      padding: const EdgeInsets.only(right: 20),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              paintings[i]['image'],
                              height: 450,
                              fit: BoxFit.cover,
                              alignment: Alignment(-pageOffset.abs() + i, 0),
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            right: 0,
                            left: 0,
                            child: Center(
                              child: Container(
                                width: 220,
                                height: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.grey.shade200.withOpacity(0.7),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      title[i],
                                      textAlign: TextAlign.center,
                                      style: headingStyle,
                                    ),
                                    Text(
                                      content[i],
                                      textAlign: TextAlign.center,
                                      style: normalStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
