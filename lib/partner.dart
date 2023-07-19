import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nami_web_info/widgets/footer.dart';
import 'package:nami_web_info/widgets/partner_form.dart';
import 'package:nami_web_info/widgets/newsSlider_Icons.dart';
import 'package:nami_web_info/widgets/animated_button.dart';

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
            Onhover(
              onPressed: () {},
              text: 'Join Our Partners',
              color: gradientPurple,
              textHover: true,
              textBorder: true,
              background: true,
              fontsize: 14,
            ),
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
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContactForm(
                          height: 40,
                          width: 300,
                          hintText: 'First Name',
                          maxline: 1),
                      ContactForm(
                          height: 40,
                          width: 300,
                          hintText: 'Last Name',
                          maxline: 1),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContactForm(
                          height: 40,
                          width: 300,
                          hintText: 'Email Address',
                          maxline: 1),
                      ContactForm(
                          height: 40,
                          width: 300,
                          hintText: 'Mobile Number',
                          maxline: 1),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContactForm(
                          height: 40,
                          width: 300,
                          hintText: 'Company',
                          maxline: 1),
                      ContactForm(
                          height: 40,
                          width: 300,
                          hintText: 'Mobile Number',
                          maxline: 1),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ContactForm(
                      height: 150,
                      width: 680,
                      hintText: 'Your Message',
                      maxline: 4),
                  const SizedBox(
                    height: 10,
                  ),
                  Onhover(
                    onPressed: () {},
                    color: gradientPurple,
                    text: 'Become a partner',
                    textBorder: true,
                    textHover: true,
                    background: true,
                    fontsize: 14,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const contactFooter()
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
