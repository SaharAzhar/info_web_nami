import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  final double height;
  final double width;
  final String hintText;
  final int maxline;
  const ContactForm(
      {super.key,
      required this.height,
      required this.width,
      required this.hintText,
      required this.maxline});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white24, borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
        maxLines: maxline,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white54)),
      ),
    );
  }
}
