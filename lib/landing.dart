import 'package:flutter/material.dart';
import 'package:nami_web_info/components.dart';
import 'package:nami_web_info/contact.dart';
import 'package:nami_web_info/news_events.dart';
import 'package:nami_web_info/partner.dart';

import 'about_us.dart';

class LandingSrc extends StatefulWidget {
  const LandingSrc({super.key});

  @override
  State<LandingSrc> createState() => _LandingSrcState();
}

class _LandingSrcState extends State<LandingSrc> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Row(
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
              reUSebaleContianer('what we offer', false, () {}),
              reUSebaleContianer(
                  'About',
                  false,
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUS()))),
              reUSebaleContianer(
                  'Partners',
                  false,
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PartnerSrc()))),
              reUSebaleContianer(
                  'New & Events',
                  false,
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewsEventSrc()))),
              reUSebaleContianer(
                  'Contact',
                  true,
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContatcScr()))),
              reUSebaleContianer(
                ' ع ',
                true,
                () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Row reUSebaleContianer(String title, bool border, VoidCallback onpressed) {
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
                child: GestureDetector(
                  onTap: onpressed,
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            : GestureDetector(
                onTap: onpressed,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
      ],
    );
  }
}

class ReUsebaleContianer extends StatelessWidget {
  final String title;
  final bool border;
  final VoidCallback onpressed;

  const ReUsebaleContianer(
      {super.key,
      required this.title,
      required this.border,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
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
                child: GestureDetector(
                  onTap: onpressed,
                  child: Text(
                    title,
                    style: const TextStyle(color: gradientPurple, fontSize: 16),
                  ),
                ),
              )
            : GestureDetector(
                onTap: onpressed,
                child: Text(
                  title,
                  style: const TextStyle(color: gradientPurple, fontSize: 16),
                ),
              ),
      ],
    );
  }
}

class NavigationHeader extends StatelessWidget {
  const NavigationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
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
              ReUsebaleContianer(
                  title: 'what we offer,', border: false, onpressed: () {}),
              ReUsebaleContianer(
                  title: 'About',
                  border: false,
                  onpressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUS()))),
              ReUsebaleContianer(
                  title: 'Partners',
                  border: false,
                  onpressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PartnerSrc()))),
              ReUsebaleContianer(
                  title: 'New & Events',
                  border: false,
                  onpressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewsEventSrc()))),
              ReUsebaleContianer(
                  title: 'Contact',
                  border: true,
                  onpressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContatcScr()))),
              ReUsebaleContianer(
                title: ' ع ',
                border: true,
                onpressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
