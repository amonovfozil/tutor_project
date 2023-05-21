import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/Reviews_page.dart';
import 'package:tutor/helper/Widgets.dart';
import 'package:tutor/helper/style_text.dart';

class TeachReviewsPage extends StatefulWidget {
  const TeachReviewsPage({super.key});

  @override
  State<TeachReviewsPage> createState() => _TeachReviewsPageState();
}

class _TeachReviewsPageState extends State<TeachReviewsPage> {
  bool init = true;
  List data = ['1', '1'];
  final pageData = [];
  int indexnow = 0;

  void nextPage(int index) {
    setState(() {
      init = false;
    });
    setState(() {
      indexnow = index;
      int end =
          (indexnow + 1) * 6 <= data.length ? 6 * (indexnow + 1) : data.length;
      pageData.clear();
      for (var i = (6 * (indexnow)); i < end; i++) {
        pageData.add(data[i]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (init) {
      for (var i = 0; i < (data.length < 6 ? data.length : 6); i++) {
        pageData.add(data[i]);
      }
    }
    return SingleChildScrollView(
      child: Form(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   'Отзывы',
                  //   textAlign: TextAlign.left,
                  //   style: StylesText().style_1_11(32),
                  // ),
                  // const SizedBox(height: 20),
                  reviews_users(pageData),
                  const SizedBox(height: 30),
                  if (pageData.length > 6)
                    Center(
                      child: SizedBox(
                        height: 25,
                        width: 40 * (data.length ~/ 6 + 1),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: data.length ~/ 6 + 1,
                            itemBuilder: (ctx, i) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: InkWell(
                                  onTap: () => nextPage(i),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: indexnow == i
                                          ? const Color(0xFF47406A)
                                          : Colors.transparent,
                                      // border: Border.all(width: 1, color: Colors.black),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      (i + 1).toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: indexnow == i
                                              ? const Color(0xFFD3D3D3)
                                              : Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontFamily: 'Gotham Pro'),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  const SizedBox(height: 30),
                  TextFormField(
                    style: StylesText().style_4(15),
                    maxLines: 6,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Введите отзыв...',
                      labelStyle: StylesText().style_4(15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Поставить оценку',
                        textAlign: TextAlign.left,
                        style: StylesText().style_1_11(17),
                      ),
                      const Spacer(),
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xFFF4B840),
                            size: 26,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xFFF4B840),
                            size: 26,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xFFF4B840),
                            size: 26,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xFFF4B840),
                            size: 26,
                          ),
                          Icon(
                            Icons.star_border_rounded,
                            color: Color(0xFFF4B840),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                  const SizedBox(height: 30),
                  widgets().Button_1(
                      'Оставить отзыв', () {}, const Color(0xFFF4B840)),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
