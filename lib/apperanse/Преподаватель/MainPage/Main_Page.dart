// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, unused_local_variable, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%9F%D1%80%D0%B5%D0%BF%D0%BE%D0%B4%D0%B0%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C/4.Employment_List.dart';
import '../2.1.Profile_screen.dart';
import '../2.TeachReviews_page_screen.dart';
import '../3.TeachChat_screen.dart';
import '../SideBar2_screen.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage/News_info.dart';
import 'package:tutor/apperanse/commonPage/5.Balans_screen.dart';
import 'package:tutor/apperanse/commonPage/Notifications.dart';

import '../../../data/category.dart';
import '../../../helper/style_text.dart';

class TeacherMainPage extends StatefulWidget {
  final int Pageindex;
  const TeacherMainPage(this.Pageindex, {super.key});

  @override
  State<TeacherMainPage> createState() => _TeacherMainPageState();
}

class _TeacherMainPageState extends State<TeacherMainPage> {
  bool init = true;

  var index;
  @override
  Widget build(BuildContext context) {
    if (init) {
      index = widget.Pageindex;
    }

    final scaffoldKey = GlobalKey<ScaffoldState>();
    List<category> menus = [
      category(
          title: 'Профиль',
          icon: 'assets/icons/naviagtion/pupil.png',
          rout: const ProfileScreen2()),
      category(
          title: 'Отзывы',
          icon: 'assets/icons/sidebar/chat.png',
          rout: const TeachReviewsPage()),
      category(
          title: 'Шахматка',
          icon: 'assets/icons/Calendar.png',
          rout: const NewsInfo()),
      category(
          title: 'Баланс',
          icon: 'assets/icons/naviagtion/balans.png',
          rout: const BalansScreen(ProfileScreen2())),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      drawer: const SideBar2(),
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
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (ctx) => const Notifications())),
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
                ? const ProfileScreen2()
                : index == 1
                    ? const TeachReviewsPage()
                    : index == 2
                        ? const EmploymentList()
                        : index == 4
                            ? const TeaCCHatScreen()
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
            isExtended: true,
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
        height: 115,
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
                      init = false;
                      index = menus.indexOf(menu);
                      if (index == 3) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) =>
                                const BalansScreen(TeacherMainPage(0))));
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
