// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/leadingPageScreens/LeadingPage_2.dart';
import 'package:tutor/helper/style_text.dart';
import 'package:tutor/helper/buttonWidgets.dart';

class LeadingPage1 extends StatelessWidget {
  const LeadingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF47406A),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 46),
              child: Center(
                child: Image.asset(
                  'assets/logo/logo.png',
                  width: 280,
                  height: 280,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 46, left: 46, right: 46),
              child: Text(
                'Добро пожаловать',
                textAlign: TextAlign.center,
                style: StylesText().style_1(28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Text(
                'Выберите язык',
                textAlign: TextAlign.center,
                style: StylesText().style_2(16),
              ),
            ),
            const SizedBox(height: 39),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widgets().mainButton(context, const LeadingPage2(),
                      'assets/icons/language/rus.png', 'Русский'),
                  const SizedBox(height: 7),
                  widgets().mainButton(context, const LeadingPage2(),
                      'assets/icons/language/uzb.png', 'Узбекский'),
                  const SizedBox(height: 7),
                  widgets().mainButton(context, const LeadingPage2(),
                      'assets/icons/language/eng.png', 'English'),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
