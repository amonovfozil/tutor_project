// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/data/Data_IT.dart';
import 'package:tutor/helper/style_text.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 18),
          Text(
            'Избранные',
            style: StylesText().style_1_11(23),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 180,
            child: Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.785,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: coursLists()
                    .courses
                    .map(
                      (teacher) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: Image.asset(teacher.teacherImg),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFF47406A),
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: 120,
                            child: Text(
                              teacher.teachername,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2,
                                  color: Color(0xFF47406A),
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Gotham Pro medium'),
                            ),
                          )
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(height: 35),
        ],
      ),
    );
  }
}
