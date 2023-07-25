import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:nami_web_info/components.dart';
import 'package:nami_web_info/widgets/footer.dart';
import 'package:nami_web_info/widgets/animated_button.dart';

import 'landing.dart';

class NewsInnerPage extends StatefulWidget {
  const NewsInnerPage({super.key});

  @override
  State<NewsInnerPage> createState() => _NewsInnerPageState();
}

class _NewsInnerPageState extends State<NewsInnerPage> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, left: 32, right: 32),
              height: MediaQuery.sizeOf(context).height * 0.6,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)),
                  gradient: LinearGradient(
                      colors: [gradientPurple, gradientBlue, gradientGreen])),
              child: Column(
                children: [
                  NavigationHeader(),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Our new agreement\nwith "Marn"',
                              style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          Text('28 Nov 23',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: gradientGreen)),
                        ],
                      ),
                      Image.asset(
                        'assets/images/marn.png',
                        scale: 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, right: 32, left: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mega Event',
                          style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: gradientPurple,
                          )),
                      SizedBox(
                        width: 600,
                        child: Text(
                            'Consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet.\nNullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales.',
                            style: GoogleFonts.poppins(
                              color: gradientPurple,
                            )),
                      )
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/newImage.png',
                      scale: 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            newsText(
                news:
                    'Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus.\n\n Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.'),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/newImage.png',
                  scale: 1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text('Maximus ante fermentum\ncommodo amet!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: gradientPurple,
                  )),
            ),
            newsText(
                news:
                    'Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus.\n\n Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.'),
            Center(
              child: Text('Latest News',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: gradientPurple,
                  )),
            ),
            Container(
              height: 500,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1,
                      crossAxisSpacing: 1),
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
                              //fontWeight: FontWeight.w500,
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
                                  //fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Onhover(
                              onPressed: () {},
                              text: 'read more',
                              color: gradientPurple,
                              textHover: true,
                              textBorder: false,
                              background: false,
                              fontsize: 14,
                              containerHeight: 30,
                              containerWeight: 180,
                            )
                          ],
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            ContactFooter()
          ],
        ),
      ),
    );
  }
}

class newsText extends StatelessWidget {
  final String news;
  const newsText({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 32, left: 32, bottom: 20),
      child: Text(news,
          textAlign: TextAlign.justify,
          style: GoogleFonts.poppins(
            color: gradientPurple,
          )),
    );
  }
}
