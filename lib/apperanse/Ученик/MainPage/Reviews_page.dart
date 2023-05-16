// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutor/helper/Widgets.dart';
import 'package:tutor/helper/style_text.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({super.key});

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  bool init = true;
  List data = ['1', '1', '1', '1', '1', '1', '1', '1', '1', '1'];
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

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
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
                      'Отзывы',
                      textAlign: TextAlign.left,
                      style: StylesText().style_1_11(32),
                    ),
                    const SizedBox(height: 20),
                    reviews_users(pageData),
                    const SizedBox(height: 30),
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
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
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
              const manual_qollanma()
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class manual_qollanma extends StatelessWidget {
  const manual_qollanma({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          bottom: 40,
          right: 0,
          child: Image.asset(
            'assets/images/bottom.png',
            height: 65,
          ),
        ),
        Positioned(
          bottom: 80,
          right: 0,
          child: Image.asset(
            'assets/images/man4.png',
            height: 260,
          ),
        ),
        Positioned(
          bottom: 330,
          left: 50,
          child: Container(
            height: 100,
            width: 220,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                color: Color(0xFF47406A)),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                'Ты еще не оставил отзыв про нашу платформу?',
                style: StylesText().style_2(14),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class reviews_users extends StatelessWidget {
  final List reviews;
  const reviews_users(this.reviews, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: reviews
          .map(
            (element) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Colors.black,
                          backgroundImage: AssetImage(
                            'assets/images/avatar.png',
                          ),
                          radius: 25,
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
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 6, bottom: 10),
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
          )
          .toList(),
    );
  }
}
