import 'package:flutter/material.dart';
import 'package:nami_web_info/components.dart';

class LandingSrc extends StatefulWidget {
  const LandingSrc({super.key});

  @override
  State<LandingSrc> createState() => _LandingSrcState();
}

class _LandingSrcState extends State<LandingSrc> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientPurple, gradientBlue, gradientGreen],
            begin: Alignment.topCenter,
            end: Alignment.centerRight,
            //stops: [0.3, 0.6, 0.8]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  logo,
                  scale: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    reUSebaleContianer('what we offer', false),
                    reUSebaleContianer('About', false),
                    reUSebaleContianer('Partners', false),
                    reUSebaleContianer('New & Events', false),
                    reUSebaleContianer('Contact', true),
                    reUSebaleContianer(' ع ', true)
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'THE FUTURE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.bold),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OF ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'SAUDI',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 100,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'PAYMENT',
                  style: TextStyle(color: Colors.white54, fontSize: 100),
                ),
                SizedBox(
                  width: 400,
                  child: Text(
                    'Leveraging the latest in financial technologies, Nami offers its partners state-of-the-art payment processing solutions, that are tailored to meet business needs.',
                    style: TextStyle(color: Colors.white54, fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),

        // child: Column(
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Image.asset(
        //           logo,
        //           scale: 30,
        //         ),
        //         SizedBox(
        //           width: 200,
        //         ),
        //         Row(
        //           children: [
        //             reUSebaleContianer('what we Offer', false),
        //             reUSebaleContianer('About', false),
        //             reUSebaleContianer('Partner', false),
        //             reUSebaleContianer('News and Events', false),
        //             reUSebaleContianer('Contact', true),
        //             reUSebaleContianer(' ع ', true),
        //           ],
        //         ),
        //       ],
        //     ),
        //     Stack(
        //       children: [
        //         Positioned(
        //             top: 80,
        //             left: 20,
        //             child: Text(
        //               'THE FUTURE',
        //               style: TextStyle(color: Colors.white),
        //             ))
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }

  Row reUSebaleContianer(String title, bool border) {
    return Row(
      children: [
        const SizedBox(
          width: 30,
        ),
        border
            ? Container(
                padding: const EdgeInsets.only(right: 7, left: 7, bottom: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.greenAccent.shade400, width: 3),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            : Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
      ],
    );
  }
}
