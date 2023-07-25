import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nami_web_info/partner.dart';
import 'package:nami_web_info/widgets/verticalContainer_Icons.dart';
import 'package:nami_web_info/widgets/animated_button.dart';

import 'components.dart';
import 'landing.dart';

class AboutUS extends StatefulWidget {
  const AboutUS({super.key});

  @override
  State<AboutUS> createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 80),
                  // height: 500,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [gradientGreen, gradientBlue, gradientPurple],
                        begin: Alignment.topCenter,
                        end: Alignment.centerRight,
                        //stops: [0.3, 0.6, 0.8]
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      NavigationHeader(),
                      const SizedBox(
                        height: 140,
                      ),
                      const Text('A futuristic',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.white24,
                          )),
                      Text('Company',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 70,
                            fontWeight: FontWeight.w100,
                            color: Colors.white,
                          ))),
                      SizedBox(
                        width: 700,
                        child: Text(
                            'Driven by collective expertise and an innovative mindset, we seek to make a lasting impact on the Saudi Fintech sector.',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                            ))),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 200,
                    right: 40,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/sitting.jpeg',
                          scale: 3.5,
                        )))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.only(left: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Our Story',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        //fontWeight: FontWeight.w100,
                        color: Colors.black,
                      ))),
                  SizedBox(
                    width: 400,
                    child: Text(
                        'With a rich background in financial solutions and services, Nami burst into the Saudi Fintech scene in 2020 despite the pandemic’s difficulties and challenges. Our creative problem-solving mindset, combined with our deep understanding of market gaps and pains, enable us to satisfy market needs, demands, and aspirations through impactful innovation.',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          //fontWeight: FontWeight.w100,
                          color: Colors.black,
                        ))),
                  ),
                ],
              ),
            ),
            Center(
              child: Text('\n\nLeadership',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    //fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ))),
            ),
            Container(
              padding: const EdgeInsets.all(40),
              child: Stack(
                // fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 80),
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [gradientPurple, gradientBlue, gradientGreen],
                        begin: Alignment.topCenter,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 35, left: 100),
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  Positioned(
                      top: -50,
                      left: 115,
                      child: Image.asset(
                        'assets/images/habibi.png',
                        scale: 2,
                      )),
                  Positioned(
                      top: 200,
                      left: 320,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white24,
                        ),
                        child: const Icon(
                          Icons.north_east_rounded,
                          size: 30,
                          weight: 10,
                          color: Colors.white,
                        ),
                      )),
                  Positioned(
                      top: 250,
                      left: 80,
                      child: Column(
                        children: [
                          Text('Osman Oueida',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 30,
                                //fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ))),
                          Text('Chairman',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 20,
                                      //fontWeight: FontWeight.w100,
                                      color: Colors.white54))),
                          SizedBox(
                            width: 300,
                            child: Text(
                                'Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                        //fontWeight: FontWeight.w100,
                                        color: Colors.white))),
                          ),
                        ],
                      )),
                  Positioned(
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.only(top: 35, right: 100),
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Positioned(
                      top: -50,
                      right: 115,
                      child: Image.asset(
                        'assets/images/habibi.png',
                        scale: 2,
                      )),
                  Positioned(
                      top: 200,
                      right: 100,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white24,
                        ),
                        child: const Icon(
                          Icons.north_east_rounded,
                          size: 30,
                          weight: 10,
                          color: Colors.white,
                        ),
                      )),
                  Positioned(
                      top: 250,
                      right: 80,
                      child: Column(
                        children: [
                          Text('Osman Oueida',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 30,
                                //fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ))),
                          Text('Chairman',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 20,
                                      //fontWeight: FontWeight.w100,
                                      color: Colors.white54))),
                          SizedBox(
                            width: 300,
                            child: Text(
                                'Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                        //fontWeight: FontWeight.w100,
                                        color: Colors.white))),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text('Our growth mission',
                          style: GoogleFonts.poppins(
                              color: Color.fromARGB(255, 52, 2, 110))),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(16)),
                        child: Text(
                            'On a mission to enable\n and endorse our clients',
                            style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 52, 2, 110))),
                      ),
                      SizedBox(
                        width: 380,
                        child: Text(
                            'Through sustainable innovation, effective support, and objective guidance, achieving comprehensive financial growth and long-term partnerships.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 52, 2, 110))),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Text('Our ambitious vision',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  decoration: TextDecoration.none,

                                  //fontWeight: FontWeight.w100,
                                  color: Color.fromARGB(255, 52, 2, 110)))),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(16)),
                        child: Text('We aim to lead the\n fintech market',
                            style: GoogleFonts.poppins()),
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(
                            'with our innovation, expertise, and partnership to endorse businesses with ongoing financial growth.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 52, 2, 110))),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text('\nOur Values',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            //fontWeight: FontWeight.w100,
                            color: Color.fromARGB(255, 52, 2, 110)))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    reuseable_row('assets/images/1.jpeg'),
                    reuseable_row('assets/images/2.jpeg'),
                    reuseable_row('assets/images/3.jpeg'),
                    reuseable_row('assets/images/4.jpeg'),
                    reuseable_row('assets/images/5.jpeg'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(top: 40, right: 40, left: 40),
              height: MediaQuery.sizeOf(context).height * 0.4,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [gradientPurple, gradientBlue, gradientGreen],
                    begin: Alignment.topCenter,
                    end: Alignment.centerRight,
                    //stops: [0.3, 0.6, 0.8]
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('How Can We Help?',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 30,
                                  //fontWeight: FontWeight.w100,
                                  color: Colors.white))),
                      Text('Learn more about our services',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  letterSpacing: 1,
                                  decoration: TextDecoration.none,
                                  fontSize: 12,

                                  //fontWeight: FontWeight.w100,
                                  color: Colors.white))),
                      TextButton.icon(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.solidCircleDot,
                            color: Colors.white54,
                            size: 20,
                          ),
                          label: Text(
                            'Contact Us',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              decoration: TextDecoration.none,
                              fontSize: 12,
                            )),
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      const Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SocialIcon(social: FontAwesomeIcons.squareFacebook),
                          SocialIcon(social: FontAwesomeIcons.linkedin),
                          SocialIcon(social: FontAwesomeIcons.youtube),
                          SocialIcon(social: FontAwesomeIcons.twitter),
                          SocialIcon(social: FontAwesomeIcons.instagram),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                          '© 2022 Luna Space Financial Company. All rights reserved.',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  letterSpacing: 1,
                                  decoration: TextDecoration.none,
                                  fontSize: 12,

                                  //fontWeight: FontWeight.w100,
                                  color: Colors.white))),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(32),
                        height: 200,
                        width: 500,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Become a Partner',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        letterSpacing: 1,
                                        decoration: TextDecoration.none,
                                        fontSize: 20,

                                        //fontWeight: FontWeight.w100,
                                        color: Colors.white))),
                            Text('join our growing list of partners',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        letterSpacing: 1,
                                        decoration: TextDecoration.none,
                                        fontSize: 10,

                                        //fontWeight: FontWeight.w100,
                                        color: Colors.white))),
                            const SizedBox(
                              height: 30,
                            ),
                            Onhover(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PartnerSrc()));
                              },
                              text: 'Become a partner',
                              color: Colors.white,
                              textBorder: false,
                              textHover: false,
                              background: false,
                              fontsize: 14,
                              containerHeight: 30,
                              containerWeight: 180,
                            )
                            // TextButton.icon(
                            //     onPressed: () {
                            //       Navigator.push(
                            //           context,
                            //           MaterialPageRoute(
                            //               builder: (context) => PartnerSrc()));
                            //     },
                            //     icon: HoverIconAnimation(),
                            //     // icon: const FaIcon(
                            //     //   FontAwesomeIcons.solidCircleDot,
                            //     //   color: Colors.white54,
                            //     //   size: 20,
                            //     // ),
                            //     label: Text(
                            //       'Become a partner',
                            //       style: GoogleFonts.poppins(
                            //           textStyle: const TextStyle(
                            //         color: Colors.white,
                            //         letterSpacing: 1,
                            //         decoration: TextDecoration.none,
                            //         fontSize: 12,
                            //       )),
                            //     )),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row reuseable_row(String path) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            path,
            scale: 4,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
