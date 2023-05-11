import 'package:flutter/material.dart';

class StylesText {
  TextStyle style_1(double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontStyle: FontStyle.normal,
        fontFamily: 'Gotham Pro medium');
  }

  TextStyle style_1_1(double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w700,
        color: const Color(0xFF47406A),
        fontStyle: FontStyle.normal,
        fontFamily: 'Gotham Pro medium');
  }

  TextStyle style_1_11(double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: const Color(0xFF47406A),
        fontStyle: FontStyle.normal,
        fontFamily: 'Gotham Pro medium');
  }

  TextStyle style_1_2(double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w700,
        color: const Color(0xFFD3D3D3),
        fontStyle: FontStyle.normal,
        fontFamily: 'Gotham Pro');
  }

  TextStyle style_2(double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: Colors.white,
        fontFamily: 'Gotham Pro');
  }

  TextStyle style_2_1(double size, bool isunder) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      color: const Color(0xFFC9C9C9),
      fontFamily: 'Gotham Pro',
      decoration: isunder ? TextDecoration.underline : TextDecoration.none,
    );
  }

  TextStyle style_2_11(double size, bool isunder) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      color: const Color(0xFF47406A),
      fontFamily: 'Gotham Pro',
      decoration: isunder ? TextDecoration.underline : TextDecoration.none,
    );
  }

  TextStyle style_2_2(double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: Colors.grey,
        fontFamily: 'Gotham Pro');
  }

  TextStyle style_3(double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        color: const Color(0xFF69628D),
        fontFamily: 'Gotham Pro');
  }

  TextStyle style_3_1(double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        color: const Color(0xFFF4B840),
        fontFamily: 'Gotham Pro');
  }

  TextStyle style_4(double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: const Color(0xFF9A9A9A),
        fontFamily: 'Gotham Pro');
  }

  TextStyle style_5(double size) {
    return TextStyle(
        fontSize: size,
        fontStyle: FontStyle.normal,
        color: Colors.black,
        fontFamily: 'Gotham Pro medium');
  }

  TextStyle style_5_1(double size) {
    return TextStyle(
        fontSize: size,
        fontStyle: FontStyle.normal,
        color: const Color(0xFF686868),
        fontFamily: 'Gotham Pro medium');
  }

  TextStyle style_6(double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: const Color(0xFF000033),
        fontFamily: 'Gotham Pro medium');
  }
}
