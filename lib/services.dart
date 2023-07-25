import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nami_web_info/components.dart';
import 'package:nami_web_info/widgets/verticalContainer_Icons.dart';

class ServicesSrc extends StatefulWidget {
  const ServicesSrc({super.key});

  @override
  State<ServicesSrc> createState() => _ServicesSrcState();
}

class _ServicesSrcState extends State<ServicesSrc> {
  final controller = CarouselController();
  final images = [
    'assets/images/benefit1.jpeg',
    'assets/images/benefit2.jpeg',
    'assets/images/benefit3.jpeg',
    'assets/images/benefit1.jpeg',
    'assets/images/benefit2.jpeg',
    'assets/images/benefit3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Our Services',
                          style: GoogleFonts.poppins(
                              color: gradientPurple, fontSize: 28),
                        ),
                        Container(
                          height: 1,
                          width: 470,
                          color: gradientPurple,
                        )
                      ],
                    ),
                    const VerticalContainerImage(
                      data: 'assets/images/hand.png',
                      path: 'assets/images/contactImage.png',
                    ),
                    const GradientText(
                        text: 'Nami connecting you\nanywhere',
                        fontWeight: FontWeight.bold,
                        size: 30)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const GradientText(
                      text: 'Streamline',
                      fontWeight: FontWeight.bold,
                      size: 80,
                    ),
                    const GradientText(
                        text: 'your\npayments\noperations',
                        fontWeight: FontWeight.w100,
                        size: 60),
                    const TextBox(
                        textWeight: FontWeight.normal,
                        width: 430,
                        text:
                            'From setup to launch, we support our partners in growing their business by delivering state-of-the-art, comprehensive payments services and solutions.',
                        textColor: Colors.black,
                        textSize: 14),
                    const TextBox(
                      width: 150,
                      text: 'NSP Services',
                      textColor: gradientPurple,
                      textWeight: FontWeight.bold,
                      textSize: 20,
                    ),
                    const TextBox(
                        textWeight: FontWeight.normal,
                        width: 680,
                        text:
                            'As a licensed Network Service Provider, we offer the necessary connectivity infrastructure to enable secure, stable, and reliable transaction processing wherever you are in the Kingdom.',
                        textColor: Colors.black,
                        textSize: 14),
                    const TextBox(
                      width: 269,
                      text: 'Don’t miss a transaction. Stay connected.',
                      textColor: gradientPurple,
                      textWeight: FontWeight.normal,
                      textSize: 18,
                    ),
                    const TextBox(
                      width: 680,
                      text:
                          'We provide high-speed internet connectivity, network security services, and data routing solutions across multiple networks to ensure all your financial transactions are processed efficiently and securely.',
                      textColor: Colors.black,
                      textWeight: FontWeight.normal,
                      textSize: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextBox(
                          width: 150,
                          text: 'benefits',
                          textColor: gradientPurple,
                          textWeight: FontWeight.normal,
                          textSize: 18,
                        ),
                        buildButton(),
                      ],
                    ),
                    CarouselSlider.builder(
                        carouselController: controller,
                        itemCount: images.length,
                        itemBuilder: (context, index, realIndex) {
                          final urlImages = images[index];
                          return buildImages(urlImages);
                        },
                        options: CarouselOptions(
                          //aspectRatio: MediaQuery.sizeOf(context).aspectRatio,
                          //initialPage: 0,
                          viewportFraction: 0.2,
                          height: 150,
                          // autoPlay: true,
                          // autoPlayAnimationDuration: const Duration(seconds: 2),
                          reverse: true,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImages(String urlImages) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          urlImages,
          scale: 6,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildButton() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: previous, icon: const Icon(Icons.arrow_back)),
          const SizedBox(
            width: 20,
          ),
          IconButton(onPressed: next, icon: const Icon(Icons.arrow_forward)),
        ],
      );
  //-------------corousol previous forward button functions--------------------//
  void next() =>
      controller.nextPage(duration: const Duration(milliseconds: 500));
  void previous() =>
      controller.previousPage(duration: const Duration(milliseconds: 500));
}

class TextBox extends StatelessWidget {
  final String text;
  final Color textColor;
  final double width;
  final FontWeight textWeight;
  final double textSize;
  const TextBox(
      {super.key,
      required this.width,
      required this.text,
      required this.textColor,
      required this.textWeight,
      required this.textSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        style: GoogleFonts.poppins(
            fontWeight: textWeight, color: textColor, fontSize: textSize),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double size;

  const GradientText(
      {super.key,
      required this.text,
      required this.fontWeight,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [gradientPurple, gradientGreen],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds);
      },
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: GoogleFonts.poppins(
            fontWeight: fontWeight, fontSize: size, color: Colors.white),
      ),
    );
  }
}
