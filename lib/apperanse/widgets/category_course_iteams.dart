// ignore_for_file: camel_case_types, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/education_center_page.dart';
import 'package:tutor/data/Data_IT.dart';
import 'package:tutor/helper/style_text.dart';

class category_iteams extends StatelessWidget {
  const category_iteams({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: coursLists().courses.map((cours) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => EducationCenter())),
              child: Container(
                height: 230,
                width: 188,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Image.asset(cours.img),
                    Positioned(
                      bottom: 0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            backgroundImage: AssetImage(
                              cours.teacherImg,
                            ),
                            radius: 40,
                          ),
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
                                Text(
                                  cours.teachername,
                                  style: StylesText().style_4(12),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  cours.title,
                                  style: StylesText().style_1_11(17),
                                ),
                                const SizedBox(height: 26),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/users.png',
                                        height: 18,
                                        width: 18,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        cours.Views.toStringAsFixed(0),
                                        style: StylesText().style_5(12),
                                      ),
                                      const Spacer(),
                                      Image.asset(
                                        'assets/icons/star.png',
                                        height: 18,
                                        width: 18,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        cours.amount_Like.toString(),
                                        style: StylesText().style_5(12),
                                      ),
                                    ],
                                  ),
                                )
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
