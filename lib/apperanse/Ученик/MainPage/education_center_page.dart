// ignore_for_file: file_names, camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/expert_info_page.dart';
import 'package:tutor/apperanse/widgets/sort_reviews.dart';
import 'package:tutor/apperanse/widgets/video_player.dart';
import 'package:tutor/data/Data_IT.dart';
import 'package:tutor/helper/Widgets.dart';
import 'package:tutor/helper/style_text.dart';

class EducationCenter extends StatelessWidget {
  EducationCenter({super.key});

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
                      'assets/images/fon.png',
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
                          'Учебный центр',
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
              Text(
                'Преподаватели',
                style: StylesText().style_1_11(17),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: coursLists()
                      .courses
                      .map(
                        (courss) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => Expert_info(),
                            )),
                            child: Container(
                              height: 238,
                              width: 170,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 170,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                      courss.teacherImg,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    'Ройтман Рафаэль',
                                    style: StylesText().style_1_11(15),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Преподаватель UI/UX',
                                    style: StylesText().style_2_2(12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Документы',
                style: StylesText().style_1_11(17),
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
              Text(
                'Фотогалерея',
                style: StylesText().style_1_11(17),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 260,
                width: double.infinity,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coursLists().courses.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (ctx, i) {
                    final courss = coursLists().courses[i];
                    return InkWell(
                      onTap: () => showDialog(
                        context: context,
                        builder: (ctx) => Image.asset(
                          courss.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          courss.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Видеоролик',
                style: StylesText().style_1_11(17),
              ),
              const SizedBox(height: 20),
              const VideoPlayer(),
              const SizedBox(height: 20),
              Text(
                'Отзывы о преподавателе',
                style: StylesText().style_1_11(17),
              ),
              const SizedBox(height: 30),
              const ReviewsSort(
                reviews: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
              ),
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
