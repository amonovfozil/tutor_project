// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/News_info.dart';
import 'package:tutor/helper/style_text.dart';

class category2_iteams extends StatelessWidget {
  const category2_iteams({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: ['1', '2', '3', '4'].map((element) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const NewsInfo())),
              child: Container(
                height: 230,
                width: 188,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/fon2.png',
                      height: 123,
                      width: 188,
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        height: 29,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/icons/Calendar.png',
                                height: 14,
                                width: 14,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '28.12.2022',
                                style: StylesText().style_1_1(11),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 12),
                          Container(
                            height: 111,
                            width: 188,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: 170,
                                  child: Text(
                                    'Изучайте японский язык',
                                    style: StylesText().style_1_11(16),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: 170,
                                  child: Text(
                                    'Быстро нашел себе преподавателя. Отличная платформа',
                                    style: StylesText().style_2_2(11),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
