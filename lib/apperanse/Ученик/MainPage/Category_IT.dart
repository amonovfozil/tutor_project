// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/Search_manegment.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/education_center_page.dart';
import 'package:tutor/data/Data_IT.dart';
import 'package:tutor/helper/style_text.dart';

class Category_IT extends StatelessWidget {
  const Category_IT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 46),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IT',
                          textAlign: TextAlign.left,
                          style: StylesText().style_1_11(28),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '199 преподавателей',
                          textAlign: TextAlign.left,
                          style: StylesText().style_4(15),
                        ),
                      ],
                    ),
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4B840),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (ctx) => const SearchManegment())),
                        child: Padding(
                          padding: const EdgeInsets.all(19),
                          child: Image.asset(
                            'assets/icons/settingsSearch.png',
                            color: Colors.white,
                            height: 27,
                            width: 26,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Stack(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          height: 180,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/images/map.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 65,
                          left: 15,
                          child: Image.asset(
                            'assets/icons/location.png',
                            height: 36,
                          ),
                        ),
                        Positioned(
                          top: 79,
                          left: 75,
                          child: Image.asset(
                            'assets/icons/location.png',
                            height: 36,
                          ),
                        ),
                        Positioned(
                          top: 70,
                          left: 134,
                          child: Image.asset(
                            'assets/icons/location.png',
                            height: 36,
                          ),
                        ),
                        Positioned(
                          top: 27,
                          right: 12,
                          child: Image.asset(
                            'assets/icons/location.png',
                            height: 36,
                          ),
                        ),
                        Positioned(
                          top: 35,
                          right: 42,
                          child: Image.asset(
                            'assets/icons/send.png',
                            width: 127,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          right: 75,
                          child: Container(
                            height: 55,
                            width: 145,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Учебный центр',
                                style: StylesText().style_1_1(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Сортировка результатов поиска:',
                      style: StylesText().style_1_1(17),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'По рейтингу',
                          style: StylesText().style_4(14),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xFF9A9A9A),
                        ),
                        const SizedBox(width: 30),
                        Text(
                          'По цене',
                          style: StylesText().style_4(14),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xFF9A9A9A),
                        ),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: ListView(
                        children: coursLists()
                            .courses
                            .map(
                              // ignore: avoid_types_as_parameter_names
                              (cours) => Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (ctx) => EducationCenter
                                          ())),
                                  child: Container(
                                    height: 111,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF8F8F8),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 110,
                                          width: 110,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10)),
                                          ),
                                          child: Image.asset(
                                            cours.img,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                cours.title,
                                                style:
                                                    StylesText().style_1_11(19),
                                              ),
                                              const SizedBox(height: 5),
                                              Text(
                                                cours.teachername,
                                                style: StylesText().style_4(13),
                                              ),
                                              const SizedBox(height: 20),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    'assets/icons/users.png',
                                                    height: 17,
                                                    width: 17,
                                                    color:
                                                        const Color(0xFF000033),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    cours.Views.toStringAsFixed(
                                                        0),
                                                    style: StylesText()
                                                        .style_6(13),
                                                  ),
                                                  const SizedBox(width: 15),
                                                  Image.asset(
                                                    'assets/icons/star.png',
                                                    height: 17,
                                                    width: 17,
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    cours.amount_Like
                                                        .toString(),
                                                    style: StylesText()
                                                        .style_6(13),
                                                  ),
                                                  const SizedBox(width: 15),
                                                  Image.asset(
                                                    'assets/icons/naviagtion/balans.png',
                                                    height: 17,
                                                    width: 17,
                                                    color:
                                                        const Color(0xFF000033),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    cours.price
                                                        .toStringAsFixed(0),
                                                    style: StylesText()
                                                        .style_6(13),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
