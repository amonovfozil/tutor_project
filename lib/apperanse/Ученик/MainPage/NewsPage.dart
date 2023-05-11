// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/News_info.dart';
import 'package:tutor/helper/style_text.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
          (indexnow + 1) * 4 <= data.length ? 4 * (indexnow + 1) : data.length;
      pageData.clear();
      for (var i = (4 * (indexnow)); i < end; i++) {
        pageData.add(data[i]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (init) {
      for (var i = 0; i < (data.length < 4 ? data.length : 4); i++) {
        pageData.add(data[i]);
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Listsnews(pageData),
            Center(
              child: SizedBox(
                height: 25,
                width: 40 * (data.length ~/ 4 + 1),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length ~/ 4 + 1,
                    itemBuilder: (ctx, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
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
            const SizedBox(height: 20)
          ],
        )),
      ),
    );
  }
}

//iniital value for start range and end range
class Listsnews extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List PageData;
  const Listsnews(this.PageData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          'Новости',
          textAlign: TextAlign.left,
          style: StylesText().style_1_11(32),
        ),
        const SizedBox(height: 30),
        Column(
          children: PageData.map(
            (news) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) =>const NewsInfo())),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/fon2.png',
                        height: 194,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Изучайте японский язык',
                              style: StylesText().style_1_11(20),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              'Практикую все свои умения на работе, поэтому даю реальные знания и опыт.',
                              style: StylesText().style_4(13),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ),
          ).toList(),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
