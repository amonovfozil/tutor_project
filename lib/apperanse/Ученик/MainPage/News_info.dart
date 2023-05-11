// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutor/helper/style_text.dart';

class NewsInfo extends StatelessWidget {
  const NewsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 12,
                    height: 22,
                    child: Image.asset(
                      'assets/icons/back.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Text(
                'Текст новости',
                textAlign: TextAlign.left,
                style: StylesText().style_1_11(32),
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      'assets/images/fon2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 12,
                    child: Container(
                      height: 35,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/icons/Calendar.png',
                              height: 16,
                              width: 16,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '28.12.2022',
                              style: StylesText().style_1_1(13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Практикую все свои умения на работе, поэтому даю реальные знания и опыт. Отдельные программы обучения для детей и взрослых.',
                style: TextStyle(
                    fontSize: 15,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9A9A9A),
                    fontFamily: 'Gotham Pro medium'),
              ),
              const SizedBox(height: 15),
              const Text(
                'Практикую все свои умения на работе, поэтому даю реальные знания и опыт. Отдельные программы обучения для детей и взрослых.',
                style: TextStyle(
                    fontSize: 15,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9A9A9A),
                    fontFamily: 'Gotham Pro medium'),
              ),
              const SizedBox(height: 15),
              const Text(
                'Практикую все свои умения на работе, поэтому даю реальные знания и опыт. Отдельные программы обучения для детей и взрослых.',
                style: TextStyle(
                    fontSize: 15,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9A9A9A),
                    fontFamily: 'Gotham Pro medium'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
