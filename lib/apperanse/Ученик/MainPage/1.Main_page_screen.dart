// ignore_for_file: prefer_typing_uninitialized_variables, file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/%D0%9A%D0%B0%D1%82%D0%B5%D0%B3%D0%BE%D1%80%D0%B8%D0%B8_page.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/NewsPage.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/Reviews_page.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/Search_manegment.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/widgets/category_course_iteams.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/widgets/category_news_iteams.dart';
import 'package:tutor/data/category.dart';
import 'package:tutor/helper/buttonWidgets.dart';
import 'package:tutor/helper/style_text.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int indexnow = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child:
          //  SingleChildScrollView(
          //   child:
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 18),
          Text(
            'Поиск преподавателей и учебных центров',
            style: StylesText().style_1_1(23),
          ),
          const SizedBox(
            height: 20,
          ),
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
                InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const SearchManegment())),
                  child: Padding(
                    padding: const EdgeInsets.all(19),
                    child: Image.asset(
                      'assets/icons/settingsSearch.png',
                      height: 22,
                      width: 22,
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
                )
              ],
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Категории',
                style: StylesText().style_1_1(21),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => const CategoryPage(),
                )),
                child: Text(
                  'Посмотреть все',
                  style: StylesText().style_1_2(14),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: dataPupilPage().category_iteams.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final data = dataPupilPage().category_iteams[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      indexnow = index;
                    });
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) => data.rout));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 82,
                          width: 84,
                          decoration: BoxDecoration(
                            color: indexnow == index
                                ? const Color(0xFFF4B840)
                                : const Color(0xFFF2F2F2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(data.icon),
                        ),
                        const SizedBox(height: 9),
                        Text(
                          data.title,
                          style: TextStyle(
                            color: indexnow == index
                                ? const Color(0xFFF4B840)
                                : const Color(0xFF686868),
                            fontFamily: 'Gotham Pro medium',
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Наши эксперты',
                style: StylesText().style_1_1(21),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Посмотреть все',
                  style: StylesText().style_1_2(14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const category_iteams(),
          const SizedBox(height: 30),
          Text(
            'Отзывы пользователей',
            style: StylesText().style_1_11(21),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => const ReviewsPage())),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage(
                          'assets/images/avatar.png',
                        ),
                        radius: 23,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Рафаэль Ройтман',
                          style: StylesText().style_1_1(16),
                        ),
                      ),
                      subtitle: Text(
                        'UI UX Designer',
                        style: StylesText().style_4(15),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/star.png',
                            height: 18,
                            width: 18,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '5.5',
                            style: StylesText().style_5(15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Быстро нашел себе преподавателя. Отличная платформа',
                        style: StylesText().style_5_1(15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Новости сервиса',
                style: StylesText().style_1_1(21),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const NewsPage())),
                child: Text(
                  'Посмотреть все',
                  style: StylesText().style_1_2(14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const category2_iteams(),
          const SizedBox(height: 30),
          Text(
            'Подпишитесь на нашу новостную рассылку',
            style: StylesText().style_1_1(21),
          ),
          const SizedBox(height: 5),
          Text(
            'Подпишитесь и вы будете в курсе все наших акций, скидок, появление Новых предметов, дисциплин и учебных центров.',
            style: StylesText().style_2_2(12),
          ),
          const SizedBox(height: 18),
          widgets().Seach_button(
              'Введите email',
              Text(
                'OK',
                style: StylesText().style_1(15),
              )),
          const SizedBox(height: 40),
        ],
      ),
      // ),
    );
  }
}
