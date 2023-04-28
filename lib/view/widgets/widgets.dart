import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({
    super.key,
    required this.title,
    required this.ls,
    required this.fontwght,
    required this.fontsz,
    this.overflow,
    this.mL,
    this.textalign,
    this.color,
    this.decor,
  });
  final String title;
  final double ls;
  final FontWeight fontwght;
  final double fontsz;
  final TextOverflow? overflow;
  final int? mL;
  final TextAlign? textalign;
  final Color? color;
  final TextDecoration? decor;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: mL,
      textAlign: textalign,
      style: TextStyle(
        decoration: decor,
        color: color,
        letterSpacing: ls,
        fontWeight: fontwght,
        fontSize: fontsz,
        overflow: overflow,
      ),
    );
  }
}
