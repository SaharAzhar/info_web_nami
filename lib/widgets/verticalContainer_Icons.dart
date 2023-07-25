import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class SocialIcon extends StatelessWidget {
  final IconData social;
  const SocialIcon({super.key, required this.social});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: FaIcon(
        social,
        color: Colors.white54,
        size: 20,
      ),
    );
  }
}

class VerticalContainerImage extends StatelessWidget {
  final String data;
  final String path;

  const VerticalContainerImage(
      {super.key, required this.data, required this.path});

  @override
  Widget build(BuildContext context) {
    bool imagePath = data.endsWith('.png') ||
        data.endsWith('.jpg') ||
        data.endsWith('.jpeg');

    return Container(
      margin: const EdgeInsets.all(32),
      padding: const EdgeInsets.only(bottom: 10),
      height: MediaQuery.sizeOf(context).height * 0.9,
      width: MediaQuery.sizeOf(context).width * 0.2,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [gradientPurple, gradientBlue, gradientGreen],
          begin: Alignment.topCenter,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(200), bottom: Radius.circular(200)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          imagePath
              ? Padding(
                  padding: EdgeInsets.only(top: 80, left: 5),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(20)),
                    child: Image.asset(
                      data,
                      scale: 0.9,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Text(data,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        color: Colors.white54,
                      ))),
                ),
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(200), left: Radius.circular(200)),
            child: Image.asset(path),
          ),
        ],
      ),
    );
  }
}
