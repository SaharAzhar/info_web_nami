import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components.dart';

class PartnerSrc extends StatefulWidget {
  const PartnerSrc({super.key});

  @override
  State<PartnerSrc> createState() => _PartnerSrcState();
}

class _PartnerSrcState extends State<PartnerSrc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 70, right: 20, left: 20, bottom: 20),
              padding: const EdgeInsets.all(30),
              height: MediaQuery.sizeOf(context).height * 0.5,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [gradientPurple, gradientBlue, gradientGreen],
                  begin: Alignment.topCenter,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(200), left: Radius.circular(200)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(200),
                        left: Radius.circular(200)),
                    child: Image.asset(
                      'assets/images/partners_handshake.jpeg',
                      scale: 2.5,
                    ),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Text('Nami\'s Success Partners',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 40,
                            //fontWeight: FontWeight.w100,
                            color: Colors.white54,
                          ))),
                      SizedBox(
                        width: 400,
                        child: Text(
                            'Throughout the years, Nami has served a wide range of partners and has contributed to the growth of the FinTech sector. Today, Nami aspires to continue adding value to the market through sustainable partnerships and creative financial solutions.',
                            //textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              //fontWeight: FontWeight.w100,
                              color: Colors.white54,
                            ))),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20, bottom: 50),
              height: MediaQuery.sizeOf(context).height * 0.5,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(32)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      partnerData('assets/images/partner1.png'),
                      partnerData('assets/images/partner2.png'),
                      partnerData('assets/images/partner3.png'),
                      partnerData('assets/images/partner4.png'),
                      partnerData('assets/images/partner5.png'),
                      partnerData('assets/images/partner6.png'),
                      partnerData('assets/images/partner7.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      partnerData('assets/images/partner7.png'),
                      partnerData('assets/images/partner6.png'),
                      partnerData('assets/images/partner4.png'),
                      partnerData('assets/images/partner5.png'),
                      partnerData('assets/images/partner3.png'),
                      partnerData('assets/images/partner2.png'),
                      partnerData('assets/images/partner1.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      partnerData('assets/images/partner1.png'),
                      partnerData('assets/images/partner2.png'),
                      partnerData('assets/images/partner3.png'),
                      partnerData('assets/images/partner4.png'),
                      partnerData('assets/images/partner5.png'),
                      partnerData('assets/images/partner6.png'),
                      partnerData('assets/images/partner7.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      partnerData('assets/images/partner7.png'),
                      partnerData('assets/images/partner6.png'),
                      partnerData('assets/images/partner4.png'),
                      partnerData('assets/images/partner5.png'),
                      partnerData('assets/images/partner3.png'),
                      partnerData('assets/images/partner2.png'),
                      partnerData('assets/images/partner1.png'),
                    ],
                  ),
                ],
              ),
            ),
            OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 3, color: gradientPurple)),
                icon: FaIcon(
                  FontAwesomeIcons.circleDot,
                  color: Colors.blue.shade100,
                ),
                label: const Text(
                  'Join Our Partners',
                  style: TextStyle(color: gradientPurple),
                )),
            Container(
              margin: const EdgeInsets.only(
                  top: 80, right: 20, left: 20, bottom: 50),
              padding: const EdgeInsets.only(top: 30),
              height: MediaQuery.sizeOf(context).height * 0.8,
              width: MediaQuery.sizeOf(context).width * 0.6,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [gradientPurple, gradientBlue, gradientGreen],
                    begin: Alignment.topCenter,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(32)),
              child: Column(
                children: [
                  Text(
                      'Partner with NAMI and gain more\nthan just a service provider.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        //fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ))),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                      ' As your trusted collaborator, we will be working hand-in-hand to develop tailored solutions that\npropel your growth.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        letterSpacing: 1,
                        //fontWeight: FontWeight.w100,
                        color: Colors.white54,
                      ))),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 300,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'First Name',
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Last Name',
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 300,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email Address',
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Mobile Number',
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 300,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Company',
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Position',
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    width: 680,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(16)),
                    child: TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Message',
                          hintStyle: TextStyle(color: Colors.white54)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(200, 40)),
                      icon: FaIcon(
                        FontAwesomeIcons.circleDot,
                        color: Colors.blue.shade100,
                      ),
                      label: const Text(
                        'Become a Partner',
                        style: TextStyle(
                            color: gradientPurple,
                            fontSize: 15,
                            fontWeight: FontWeight.w800),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(top: 40, right: 40, left: 40),
              height: MediaQuery.sizeOf(context).height * 0.5,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                  gradient: LinearGradient(
                    colors: [Colors.white, gradientBlue, gradientGreen],
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
                      SizedBox(
                        width: 300,
                        child: Text('Let’s start growing your business!',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 30,
                                    //fontWeight: FontWeight.w600,
                                    color: gradientPurple))),
                      ),
                      TextButton.icon(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.solidCircleDot,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          label: Text(
                            'Contact Us',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              color: gradientPurple,
                              letterSpacing: 1,
                              decoration: TextDecoration.none,
                              fontSize: 12,
                            )),
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.squareFacebook,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FaIcon(
                            FontAwesomeIcons.youtube,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
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
                                  color: gradientPurple))),
                    ],
                  ),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(top: 32, left: 20, right: 20),
                        height: 250,
                        width: 550,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Customer service',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15,
                                                //fontWeight: FontWeight.w100,
                                                color: gradientPurple))),
                                    Text('8001230011',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15,
                                                //fontWeight: FontWeight.w100,
                                                color: gradientPurple))),
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Fax',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15,
                                                //fontWeight: FontWeight.w100,
                                                color: gradientPurple))),
                                    Text('8001230011',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15,
                                                //fontWeight: FontWeight.w100,
                                                color: gradientPurple))),
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Email',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15,
                                                //fontWeight: FontWeight.w100,
                                                color: gradientPurple))),
                                    Text('info@namipay.com.sa',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15,
                                                //fontWeight: FontWeight.w100,
                                                color: gradientPurple))),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Address',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 15,
                                        //fontWeight: FontWeight.w100,
                                        color: gradientPurple))),
                            Text(
                                'Al Rabwa District, Al Moarrekh bin Basher Street P.O.Box 325521, Riyadh 11371, kingdom of Saudi Arabia',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                        //fontWeight: FontWeight.w100,
                                        color: gradientPurple))),
                            SizedBox(
                              height: 30,
                            ),
                            Text('Subscribe to get the latest news and offers.',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 15,
                                        //fontWeight: FontWeight.w100,
                                        color: gradientPurple))),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 300,
                                  padding:
                                      EdgeInsets.only(bottom: 20, left: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter your email',
                                        hintStyle: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 12)),
                                  ),
                                ),
                                TextButton.icon(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.solidCircleDot,
                                      color: Colors.grey.shade400,
                                      size: 20,
                                    ),
                                    label: Text(
                                      'Subscribe',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        color: gradientPurple,
                                        letterSpacing: 1,
                                        decoration: TextDecoration.none,
                                        fontSize: 12,
                                      )),
                                    )),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Image partnerData(String path) {
    return Image.asset(
      path,
      scale: 2,
    );
  }
}
