// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/AuthScreen/category_Auth.dart';
import 'package:tutor/helper/style_text.dart';

class MiddlePage3 extends StatelessWidget {
  const MiddlePage3({super.key});

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
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 26),
                  SizedBox(
                    width: 226,
                    height: 60,
                    child: Text(
                      'Поднимай свои  знания',
                      textAlign: TextAlign.left,
                      style: StylesText().style_1(28),
                    ),
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
                  padding: const EdgeInsets.only(top: 275),
                  child: Image.asset(
                    'assets/images/bottom.png',
                  ),
                ),
                Positioned(
                  top: 35,
                  right: -10,
                  child: Image.asset(
                    'assets/images/man3.png',
                    height: 273.11,
                    width: 171.51,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const categoryAuth(),
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
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
