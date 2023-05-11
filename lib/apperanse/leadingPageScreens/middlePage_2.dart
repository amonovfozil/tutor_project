// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/leadingPageScreens/middlePage_3.dart';
import 'package:tutor/helper/style_text.dart';

class MiddlePage2 extends StatelessWidget {
  const MiddlePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF47406A),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 26),
                  Text(
                    'Найди своего преподавателя',
                    textAlign: TextAlign.left,
                    style: StylesText().style_1(28),
                  ),
                  const SizedBox(height: 18),
                  SizedBox(
                    height: 120,
                    width: 322,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip',
                      textAlign: TextAlign.left,
                      style: StylesText().style_2_1(16, false),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 265),
                  child: Image.asset(
                    'assets/images/bottom.png',
                  ),
                ),
                Positioned(
                  top: 20,
                  right: -30,
                  child: Image.asset(
                    'assets/images/man2.png',
                    height: 286.86,
                    width: 198.36,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const MiddlePage3(),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 62,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4B840),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Продолжить',
                        style: StylesText().style_2(20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
