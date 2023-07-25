import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nami_web_info/components.dart';

import '../services.dart';

class ServiceTabChnager extends StatefulWidget {
  const ServiceTabChnager({super.key});

  @override
  State<ServiceTabChnager> createState() => _ServiceTabChnagerState();
}

class _ServiceTabChnagerState extends State<ServiceTabChnager> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            const Expanded(
                child: TabBarView(
              children: [ServicesSrc(), ServicesSrc(), ServicesSrc()],
            )),
            Container(
              height: 40,
              width: MediaQuery.sizeOf(context).width * 0.4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.grey.shade500, Colors.grey.shade200]),
                  borderRadius: BorderRadius.circular(25)),
              child: TabBar(
                  onTap: (value) => setState(() {
                        currentIndex = value;
                      }),
                  labelColor: gradientPurple,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelColor: gradientPurple,
                  unselectedLabelStyle:
                      const TextStyle(fontWeight: FontWeight.bold),
                  indicatorPadding: const EdgeInsets.all(2),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  tabs: [
                    currentIndex == 0
                        ? Tab(
                            child: IconTab(text: 'NSP Services'),
                          )
                        : Tab(
                            text: 'NSP Services',
                          ),
                    currentIndex == 1
                        ? Tab(
                            child: IconTab(text: 'MSP Services'),
                          )
                        : Tab(
                            text: 'MSP Services',
                          ),
                    currentIndex == 2
                        ? Tab(
                            child: IconTab(text: 'Aggregation Services'),
                          )
                        : Tab(
                            text: 'Aggregation Services',
                          ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class IconTab extends StatelessWidget {
  final String text;
  const IconTab({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FaIcon(
          FontAwesomeIcons.solidCircleDot,
          color: Colors.blue.shade100,
        ),
        Text(text)
      ],
    );
  }
}
