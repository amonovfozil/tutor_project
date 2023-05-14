// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/helper/Widgets.dart';
import 'package:tutor/helper/style_text.dart';

class PaidServices extends StatelessWidget {
  const PaidServices({super.key});

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
                'Платные услуги',
                textAlign: TextAlign.left,
                style: StylesText().style_1_11(32),
              ),
              const SizedBox(height: 26),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: ['1', '2', '3']
                    .map(
                      (paid) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Заголовок услуги',
                                  style: StylesText().style_1_11(18),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Быстро нашел себе преподавателя. Отличная платформа',
                                  style: StylesText().style_4(13),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    widgets().Button_2('Купить', () {},
                                        const Color(0xFF47406A), 40, 120, 13)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Stack(
                children: [
                  const SizedBox(
                    height: 360,
                    width: double.infinity,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Image.asset(
                      'assets/images/man6.png',
                      height: 270,
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 40,
                    child: Container(
                      height: 95,
                      width: 210,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        color: Color(0xFF47406A),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(17),
                        child: Center(
                          child: Text(
                            'Может купить услугу, чтобы получать знания еще быстрее?',
                            style: StylesText().style_1_2(14),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
