import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nami_web_info/widgets/newsSlider_Icons.dart';

import '../components.dart';
import 'animated_button.dart';

class contactFooter extends StatelessWidget {
  const contactFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, right: 40, left: 40),
      height: MediaQuery.sizeOf(context).height * 0.5,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 2),
          gradient: const LinearGradient(
            colors: [Colors.white, gradientBlue, gradientGreen],
            begin: Alignment.topCenter,
            end: Alignment.centerRight,
          ),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
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
                        fontSize: 30, color: gradientPurple)),
              ),
              const SizedBox(
                height: 20,
              ),
              Onhover(
                  onPressed: () {},
                  text: 'Contact Us',
                  color: gradientPurple,
                  textHover: false,
                  textBorder: false,
                  background: false,
                  fontsize: 16),
              const SizedBox(
                height: 40,
              ),
              const Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  socialIcon(social: FontAwesomeIcons.squareFacebook),
                  socialIcon(social: FontAwesomeIcons.linkedin),
                  socialIcon(social: FontAwesomeIcons.youtube),
                  socialIcon(social: FontAwesomeIcons.twitter),
                  socialIcon(social: FontAwesomeIcons.instagram),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text('© 2022 Luna Space Financial Company. All rights reserved.',
                  style: GoogleFonts.poppins(color: gradientPurple)),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
            height: 250,
            width: 550,
            decoration: BoxDecoration(
                color: Colors.white24, borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Customer service',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: gradientPurple)),
                        Text('8001230011',
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: gradientPurple)),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Fax',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: gradientPurple)),
                        Text('8001230011',
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: gradientPurple)),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: gradientPurple)),
                        Text('info@namipay.com.sa',
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: gradientPurple)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text('Address',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: gradientPurple)),
                Text(
                    'Al Rabwa District, Al Moarrekh bin Basher Street P.O.Box 325521, Riyadh 11371, kingdom of Saudi Arabia',
                    style: GoogleFonts.poppins(
                        fontSize: 10, color: gradientPurple)),
                const SizedBox(
                  height: 30,
                ),
                Text('Subscribe to get the latest news and offers.',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: gradientPurple)),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 300,
                      padding:
                          const EdgeInsets.only(bottom: 10, left: 10, top: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(16)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade400, fontSize: 12)),
                      ),
                    ),
                    Onhover(
                        onPressed: () {},
                        text: 'Subscribe',
                        color: gradientPurple,
                        textHover: false,
                        textBorder: false,
                        background: false,
                        fontsize: 14),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
