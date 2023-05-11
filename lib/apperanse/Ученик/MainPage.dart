// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:tutor/SideBar_screen.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/2.Profile_screen.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/3.Chat_screen.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/5.Balans_screen.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/Category_IT.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/1.Main_page_screen.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/NewsPage.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/News_info.dart';
import 'package:tutor/data/category.dart';
import 'package:tutor/helper/style_text.dart';

class PupilMainPage extends StatefulWidget {
  const PupilMainPage({super.key});

  @override
  State<PupilMainPage> createState() => _PupilMainPageState();
}

class _PupilMainPageState extends State<PupilMainPage> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    List<category> menus = [
      category(
          title: 'Главная',
          icon: 'assets/icons/naviagtion/home.png',
          rout: const PupilMainPage()),
      category(
          title: 'Профиль',
          icon: 'assets/icons/naviagtion/pupil.png',
          rout: const NewsPage()),
      category(
          title: 'Избранное',
          icon: 'assets/icons/naviagtion/img.png',
          rout: const NewsInfo()),
      category(
          title: 'Баланс',
          icon: 'assets/icons/naviagtion/balans.png',
          rout: const Category_IT()),
    ];
    return Scaffold(
      key: scaffoldKey,
      drawer: const SideBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 90,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                color:
                    index == 4 ? Colors.transparent : const Color(0xFF47406A),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => scaffoldKey.currentState!.openDrawer(),
                      icon: Icon(
                        Icons.format_align_left,
                        color:
                            index == 4 ? const Color(0xFF363853) : Colors.white,
                        size: 30,
                      ),
                    ),
                    Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none_rounded,
                            color: index == 4
                                ? const Color(0xFF363853)
                                : Colors.white,
                            size: 32,
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 6,
                          child: Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFFF4B840),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Expanded(
            // child:
            index == 0
                ? const mainPage()
                : index == 1
                    ? const ProfileScreen()
                    : index == 4
                        ? const ChatScreen()
                        : Container(),
            // ),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF47406A),
            onPressed: () {
              setState(() {
                index = 4;
              });
            },
            child: ImageIcon(
              const AssetImage('assets/icons/naviagtion/main.png'),
              color: index == 4
                  ? const Color(0xFFF4B840)
                  : const Color(0xFF69628D),
            ),
            //params
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 105,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Color(0xFF47406A),
        ),
        // alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: menus
              .map(
                (menu) => InkWell(
                  onTap: () {
                    setState(() {
                      index = menus.indexOf(menu);
                      if (index == 3) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const BalansScreen()));
                      }
                      // widget.getIndex(menus.indexOf(menu));
                    });
                  },
                  child: Padding(
                    padding: menus.indexOf(menu) == 1
                        ? const EdgeInsets.only(right: 25)
                        : menus.indexOf(menu) == 2
                            ? const EdgeInsets.only(left: 25)
                            : const EdgeInsets.only(right: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          menu.icon,
                          height: 25,
                          color: index == menus.indexOf(menu)
                              ? const Color(0xFFF4B840)
                              : const Color(0xFF69628D),
                        ),
                        const SizedBox(height: 5),
                        Text(menu.title,
                            style: index == menus.indexOf(menu)
                                ? StylesText().style_3_1(10)
                                : StylesText().style_3(10)),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
