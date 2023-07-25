import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  final double height;
  final double width;
  final String hintText;
  final int maxline;
  final Color backgroundColor;
  final Color textColor;
  const ContactForm(
      {super.key,
      required this.height,
      required this.width,
      required this.hintText,
      required this.backgroundColor,
      required this.textColor,
      required this.maxline});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
        maxLines: maxline,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: textColor)),
      ),
    );
  }
}

//----------ContactFormFieldsTemporary----------------//
Container formFields(String text1, text2) {
  return Container(
    margin: EdgeInsets.only(left: 32, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContactForm(
            height: 40,
            width: 300,
            hintText: text1,
            backgroundColor: Colors.grey.shade300,
            textColor: Colors.grey,
            maxline: 1),
        SizedBox(
          width: 30,
        ),
        ContactForm(
            height: 40,
            width: 300,
            hintText: text2,
            backgroundColor: Colors.grey.shade300,
            textColor: Colors.grey,
            maxline: 1),
      ],
    ),
  );
}
