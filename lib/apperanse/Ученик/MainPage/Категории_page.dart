// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutor/data/category.dart';
import 'package:tutor/helper/style_text.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
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
            Text(
              'Категории',
              textAlign: TextAlign.left,
              style: StylesText().style_1_11(28),
            ),
            const SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Введите название',
                            hintStyle: StylesText().style_1_2(15),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 67,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4B840),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: GridView.builder(
                    itemCount: dataPupilPage().category_iteams.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (ctx, i) {
                      final data = dataPupilPage().category_iteams[i];
                      return InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => data.rout)),
                        child: Container(
                          height: 77,
                          width: 77,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF2F2F2),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(data.icon),
                              const SizedBox(height: 10),
                              Text(
                                data.title,
                                style: StylesText().style_5_1(16),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
