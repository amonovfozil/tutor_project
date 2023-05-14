// ignore_for_file: file_names, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/widgets/sort_reviews.dart';
import 'package:tutor/apperanse/widgets/table.dart';
import 'package:tutor/helper/Widgets.dart';
import 'package:tutor/helper/style_text.dart';

class Expert_info extends StatelessWidget {
  Expert_info({super.key});

  var selectedRange = const RangeValues(90, 420);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: SizedBox(
                  width: 12,
                  height: 22,
                  child: Image.asset(
                    'assets/icons/back.png',
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Row(
                children: [
                  Container(
                    width: 126,
                    height: 135,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      'assets/images/avatar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Рафаэль Ройтман',
                          style: StylesText().style_1_11(21),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Узбекистан, Ташкент',
                          style: StylesText().style_4(14),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/star.png',
                              height: 17,
                              width: 17,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '5',
                              style: StylesText().style_6(13),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/icons/users.png',
                              height: 17,
                              width: 17,
                              color: const Color(0xFF000033),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '178',
                              style: StylesText().style_6(13),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/icons/naviagtion/balans.png',
                              height: 17,
                              width: 17,
                              color: const Color(0xFF000033),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '10',
                              style: StylesText().style_6(13),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 200,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFF4B840),
                                ),
                                child: Text(
                                  'Написать',
                                  style: StylesText().style_2(15),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/icons/sidebar/img1.png',
                              height: 24,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 245, 245, 245),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'О центре',
                        style: StylesText().style_1_11(17),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Практикую все свои умения на работе, поэтому даю реальные знания и опыт. Отдельные программы обучения для детей и взрослых.',
                        style: StylesText().style_2_2(14),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 245, 245, 245),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Образование',
                        style: StylesText().style_1_11(17),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color(0xFFF4B840),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              'Высшая школа дизайна и программирования',
                              style: StylesText().style_2_2(14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 245, 245, 245),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Опыт работы',
                        style: StylesText().style_1_11(17),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Практикую все свои умения на работе, поэтому даю реальные знания и опыт. Отдельные программы обучения для детей и взрослых.',
                        style: StylesText().style_2_2(14),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: ['1', '2', '3']
                      .map(
                        (sertificat) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            height: 100,
                            width: 145,
                            child: Image.asset(
                              'assets/images/sertificat.png',
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 245, 245, 245),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Место проведения оффлайн',
                        style: StylesText().style_1_11(17),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Узбекистан, г.Ташкент,ул.Абдулла Каххара, 23',
                        style: StylesText().style_2_2(14),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Посмотреть на карте',
                        style: StylesText().style_2_11(14, true),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 245, 245, 245),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Дисциплины и стоимость обучения',
                        style: StylesText().style_1_11(17),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              'Web Design',
                              style: StylesText().style_1_11(14),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              'У преподавателя 40\$/час  У ученика дома 60\$/час Online через Zoom 20\$/час',
                              style: StylesText().style_2_2(14),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              'Английский язык',
                              style: StylesText().style_1_11(14),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              'У преподавателя 40\$/час  У ученика дома 60\$/час Online через Zoom 20\$/час',
                              style: StylesText().style_2_2(14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  'Смотреть все дисциплины и цены',
                  style: StylesText().style_2_2(14),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Шахматка занятости преподавателя',
                style: StylesText().style_1_11(17),
              ),
              const SizedBox(height: 15),
              const TableDesign(),
              const SizedBox(height: 15),
              Text(
                'Отзывы о преподавателе',
                style: StylesText().style_1_11(17),
              ),
              const SizedBox(height: 20),
              const ReviewsSort(reviews: ['1', '2', '3', '4']),
              const SizedBox(height: 20),
              widgets()
                  .Button_1('Оставить отзыв', () {}, const Color(0xFFF4B840)),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
