import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nami_web_info/components.dart';
import 'package:nami_web_info/widgets/animated_button.dart';
import 'package:nami_web_info/widgets/footer.dart';
import 'package:nami_web_info/widgets/verticalContainer_Icons.dart';
import 'package:nami_web_info/widgets/partner_form.dart';

import 'landing.dart';

class ContatcScr extends StatefulWidget {
  const ContatcScr({super.key});

  @override
  State<ContatcScr> createState() => _ContatcScrState();
}

class _ContatcScrState extends State<ContatcScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            NavigationHeader(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('    Contact Us',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: gradientPurple,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      formFields("First Name", 'Last Name'),
                      formFields("Email Address", 'Mobile Number'),
                      formFields("company", 'Position'),
                      formFields("Inquiry type", 'Subject'),
                      Container(
                        padding: const EdgeInsets.only(left: 32),
                        child: ContactForm(
                            height: 150,
                            width: 700,
                            hintText: 'Your Message',
                            backgroundColor: Colors.grey.shade300,
                            textColor: Colors.grey,
                            maxline: 4),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Onhover(
                            onPressed: () {},
                            text: 'send',
                            color: gradientPurple,
                            textHover: false,
                            textBorder: false,
                            background: false,
                            fontsize: 10,
                            containerHeight: 30,
                            containerWeight: 65),
                      )
                    ],
                  ),
                ),
                VerticalContainerImage(
                  data:
                      'Enjoy seamless transactions, versatile options and enhanced security.',
                  path: 'assets/images/contactImage.png',
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('    Contact Us',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: gradientPurple,
                  )),
            ),
            Container(
                padding: const EdgeInsets.only(
                    top: 20, right: 40, left: 40, bottom: 20),
                height: MediaQuery.sizeOf(context).height * 0.6,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, gradientBlue, gradientGreen],
                      begin: Alignment.topCenter,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ContactInfo(),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/map.png',
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
                          height: 20,
                        ),
                        Text(
                            '© 2022 Luna Space Financial Company. All rights reserved.',
                            style: GoogleFonts.poppins(color: gradientPurple)),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
