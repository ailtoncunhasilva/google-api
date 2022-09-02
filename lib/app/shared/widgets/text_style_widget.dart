import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  TextStyleWidget({
    required this.text,
    this.padding,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: fontSize ?? 14.0,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}