import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swiper_project/writtencontent.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var headingStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
  );
  var normalStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
  );
  var contentStyle = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 420,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Hero(
                    tag: 'image',
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/atul.jpg'),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Colors.black,
                              Colors.black.withOpacity(.3)
                            ])),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Atul Rathour",
                                style: headingStyle,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Text(
                                  "Computer Engineer",
                                  style: normalStyle,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.white,
                              size: 25,
                            ),
                            Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                              size: 25,
                            ),
                            Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                              size: 25,
                            ),
                            Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                              size: 25,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 20, top: 20, bottom: 20),
                          child: Text(
                            aboutme,
                            textAlign: TextAlign.justify,
                            style: contentStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text(
                            "Languages/Technologies",
                            style: normalStyle,
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            FontAwesomeIcons.python,
                            color: Colors.white,
                            size: 40,
                          ),
                          title: Text(
                            'Python',
                            style: normalStyle,
                          ),
                          subtitle: RatingBarIndicator(
                            unratedColor: Colors.white,
                            rating: 4.5,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 20.0,
                            direction: Axis.horizontal,
                          ),
                        ),
                        ListTile(
                          leading: Image.asset(
                            'assets/images/flutter.png',
                            color: Colors.white,
                            width: 40,
                            height: 40,
                          ),
                          title: Text(
                            'Flutter',
                            style: normalStyle,
                          ),
                          subtitle: RatingBarIndicator(
                            unratedColor: Colors.white,
                            rating: 4,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 20.0,
                            direction: Axis.horizontal,
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            FontAwesomeIcons.nodeJs,
                            color: Colors.white,
                            size: 40,
                          ),
                          title: Text(
                            'NodeJs',
                            style: normalStyle,
                          ),
                          subtitle: RatingBarIndicator(
                            unratedColor: Colors.white,
                            rating: 3.5,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 20.0,
                            direction: Axis.horizontal,
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            FontAwesomeIcons.html5,
                            color: Colors.white,
                            size: 40,
                          ),
                          title: Text(
                            'HTML/CSS',
                            style: normalStyle,
                          ),
                          subtitle: RatingBarIndicator(
                            unratedColor: Colors.white,
                            rating: 3.5,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 20.0,
                            direction: Axis.horizontal,
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        )
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: SizedBox(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow[700]),
                  child: const Align(
                      child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
