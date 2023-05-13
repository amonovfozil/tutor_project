// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

import '../helper/style_text.dart';

class widgets {
  Widget mainButton(
      BuildContext ctx, Widget adress, String imgurl, String title) {
    return InkWell(
      onTap: () => Navigator.of(ctx).push(
        MaterialPageRoute(
          builder: (ctx) => adress,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF69628D),
        ),
        child: SizedBox(
          height: 61,
          width: 335,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  imgurl,
                  height: 31,
                  width: 31,
                ),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: StylesText().style_1(16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Button_1(String title, Function function, Color color) {
    return InkWell(
      onTap: () => function(),
      child: Container(
        height: 62,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            title,
            style: StylesText().style_1(20),
          ),
        ),
      ),
    );
  }

  Widget Button_2(String title, Function function, Color color, double height,
      double width, double textsize) {
    return InkWell(
      onTap: () => function(),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            title,
            style: StylesText().style_1(textsize),
          ),
        ),
      ),
    );
  }

  Widget Seach_button(String hint, Widget widget) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(5),
      ),
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: StylesText().style_1_2(15),
                    border: InputBorder.none),
              ),
            ),
          ),
          Container(
            height: 60,
            width: 67,
            decoration: BoxDecoration(
              color: const Color(0xFFF4B840),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(child: widget),
          )
        ],
      ),
    );
  }
}
