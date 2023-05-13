// ignore_for_file: file_names, unused_element, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/My_reviews.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/Transactions.dart';
import '/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/5.Balans_screen.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/Paid%20services.dart';
import 'package:tutor/helper/style_text.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    Widget SidebarIteams(
        String title, String iconUrl, Widget pagerout, bool ismainpage) {
      return TextButton.icon(
          onPressed: () => ismainpage
              ? Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => pagerout))
              : Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => pagerout)),
          icon: ImageIcon(
            AssetImage(
              iconUrl,
            ),
            color: const Color(0xFF686868),
          ),
          label: Text(
            title,
            style: StylesText().style_5_1(16),
          ));
    }

    return Drawer(
      width: MediaQuery.of(context).size.width - 100,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.close,
                      size: 40,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 35,
                ),
                title: Text(
                  'Рафаэль Ройтман',
                  style: StylesText().style_1_1(18),
                ),
                subtitle: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Баланс: ', style: StylesText().style_3(18)),
                      TextSpan(
                          text: '100.000 сум',
                          style: StylesText().style_5_1(15)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SidebarIteams(
                      'Личные данные',
                      'assets/icons/sidebar/user.png',
                      const PupilMainPage(1),
                      true),
                  const SizedBox(height: 20),
                  SidebarIteams('Мои чаты', 'assets/icons/sidebar/letter.png',
                      const PupilMainPage(4), true),
                  const SizedBox(height: 20),
                  SidebarIteams('Мой баланс', 'assets/icons/sidebar/balans.png',
                      const BalansScreen(), true),
                  const SizedBox(height: 20),
                  SidebarIteams(
                      'Платные услуги',
                      'assets/icons/sidebar/chat.png',
                      const PaidServices(),
                      false),
                  const SizedBox(height: 20),
                  SidebarIteams('Транзакции', 'assets/icons/sidebar/Swap.png',
                      const Transactions(), false),
                  const SizedBox(height: 20),
                  SidebarIteams('Мои отзывы', 'assets/icons/sidebar/cart.png',
                      const MyReviews(), false),
                  const SizedBox(height: 20),
                  SidebarIteams('Избранные', 'assets/icons/sidebar/img1.png',
                      const PupilMainPage(2), true),
                  const SizedBox(height: 20),
                  SidebarIteams('Выйти', 'assets/icons/sidebar/Logout.png',
                      const PupilMainPage(0), true),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
