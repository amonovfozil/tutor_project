// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/helper/Widgets.dart';
import 'package:tutor/helper/style_text.dart';

class TeachReviews extends StatelessWidget {
  const TeachReviews({super.key});

  @override
  Widget build(BuildContext context) {
    void ClickReviews() {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) => AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.close,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Подать протест',
                style: StylesText().style_1_11(24),
              ),
              const SizedBox(height: 10),
              TextFormField(
                maxLines: 6,
                decoration: const InputDecoration(
                    fillColor: Color(0xFFF2F2F2),
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: widgets().Button_2(
                  'Отправить', () {}, const Color(0xFF47406A), 51, 260, 17),
            )
          ],
          titlePadding: const EdgeInsets.symmetric(horizontal: 5),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      );
    }

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
                'Мои отзывы',
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
                        child: InkWell(
                          onTap: ClickReviews,
                          child: Container(
                            height: 156,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'От: ',
                                            style: StylesText().style_4(16)),
                                        TextSpan(
                                          text: 'Рафаль Ройтман',
                                          style: StylesText().style_1_11(16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Быстро нашел себе преподавателя. Отличная платформа',
                                    style: StylesText().style_4(13),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Оценка:',
                                        style: StylesText().style_1_1(13),
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        '5.5',
                                        style: StylesText().style_1_1(13),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const ImageIcon(
                                          AssetImage(
                                            'assets/icons/flag.png',
                                          ),
                                          size: 20,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
