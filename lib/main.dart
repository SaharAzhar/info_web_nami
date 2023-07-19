import 'package:flutter/material.dart';
import 'package:nami_web_info/contact.dart';
import 'package:nami_web_info/landing.dart';
import 'package:nami_web_info/partner.dart';

import 'package:nami_web_info/widgets/animated_button.dart';

import 'about_us.dart';

import 'inner_news.dart';
import 'news_events.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ContatcScr()
        //MyWidget()
        //NewsInnerPage(),
        // NewsEventSrc()
        //HoverIconAnimation()
        //Formdemo()
        //PartnerSrc(),
        //AboutUS(),
        //MyHomePage(),
        );
  }
}
