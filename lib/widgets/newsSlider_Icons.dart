import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class socialIcon extends StatelessWidget {
  final IconData social;
  const socialIcon({super.key, required this.social});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: FaIcon(
        social,
        color: Colors.white24,
        size: 20,
      ),
    );
  }
}
