import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:nami_web_info/widgets/animated_button.dart';

import 'components.dart';
import 'inner_news.dart';
import 'widgets/footer.dart';

class NewsEventSrc extends StatefulWidget {
  const NewsEventSrc({super.key});

  @override
  State<NewsEventSrc> createState() => _NewsEventSrcState();
}

class _NewsEventSrcState extends State<NewsEventSrc> {
  final controller = CarouselController();

  final images = [
    'assets/images/newImage.png',
    'assets/images/newImage.png',
    'assets/images/newImage.png',
    'assets/images/newImage.png',
    'assets/images/newImage.png',
    'assets/images/newImage.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            background(context),
            const SizedBox(
              height: 30,
            ),
            CarouselSlider.builder(
                carouselController: controller,
                itemCount: images.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImages = images[index];
                  return buildImages(urlImages, index);
                },
                options: CarouselOptions(
                  initialPage: 0,
                  viewportFraction: 1,
                  height: 250,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  reverse: true,
                )),
            const SizedBox(
              height: 20,
            ),
            buildButton(),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  final imagePath = images[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                          scale: 2,
                        ),
                      ),
                      SizedBox(
                        width: 400,
                        child: Text(
                          'An agreement has been signed with "Marn" to integrate technology and provide comprehensive smart solutions in order to raise the level of financial services for merchants and expand to larger segments in the Saudi market in order to achieve the goals of Vision 2030.',
                          style: GoogleFonts.poppins(
                            color: gradientPurple,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '28-Nov-23',
                            style: GoogleFonts.poppins(
                                color: Colors.grey, fontSize: 10),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Onhover(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NewsInnerPage()));
                            },
                            text: 'read more',
                            color: gradientPurple,
                            textHover: true,
                            textBorder: false,
                            background: false,
                            fontsize: 14,
                          )
                        ],
                      )
                    ],
                  );
                }),
            const SizedBox(height: 10),
            const contactFooter()
          ],
        ),
      ),
    );
  }

//------------corousol sliding images--------------------//
  Widget buildImages(String urlImages, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                urlImages,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Latest News',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: gradientPurple,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 400,
                  child: Text(
                    'An agreement has been signed with "Marn" to integrate technology and provide comprehensive smart solutions in order to raise the level of financial services for merchants and expand to larger segments in the Saudi market in order to achieve the goals of Vision 2030.',
                    style: GoogleFonts.poppins(
                        color: gradientPurple, fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '28-Nov-23',
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 230,
                    ),
                    Onhover(
                      onPressed: () {},
                      text: 'read more',
                      color: gradientPurple,
                      textHover: true,
                      textBorder: false,
                      background: false,
                      fontsize: 10,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );

  //-------------corousol previous forward button------------//
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

  Container background(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
      height: MediaQuery.sizeOf(context).height * 0.6,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientPurple, gradientBlue, gradientGreen],
            begin: Alignment.topCenter,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
                Text(
                  'Visit us at our next event ',
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                Container(
                  height: 1,
                  width: 200,
                  color: Colors.white,
                )
              ]),
              Text(
                '2-3 Nov',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.white24,
                    fontSize: 100),
              ),
              Text(
                'Booth K30',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: gradientGreen,
                  //fontSize: 100
                ),
              ),
              SizedBox(
                width: 300,
                child: Text(
                    'Riyadh International Convention & Exhibition Center, Riyadh',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      //fontSize: 100
                    )),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/seamless.png',
                scale: 1.5,
              ),
              SizedBox(
                width: 400,
                child: Text(
                    'At seamless event, the future of payments, fintech retail and e-commerce.',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      //fontSize: 100
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
