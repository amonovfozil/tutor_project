// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/AuthScreen/SignIn_screen(school%20).dart';
import 'package:tutor/apperanse/AuthScreen/SignIn_screen(teacher%20&%20Pupil%20)%20copy.dart';
import 'package:tutor/helper/style_text.dart';
import 'package:tutor/helper/buttonWidgets.dart';

enum category { school, pupil, teacher }

class categoryAuth extends StatelessWidget {
  const categoryAuth({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF47406A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46),
            child: Center(
              child: Image.asset(
                'assets/logo/logo.png',
                width: 280,
                height: 280,
              ),
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: 69,
            width: 282,
            child: Text(
              'Выберите тип пользователя',
              textAlign: TextAlign.center,
              style: StylesText().style_1(28),
            ),
          ),
          const SizedBox(height: 33),
          widgets().mainButton(
            context,
            const SignInScreen3(),
            'assets/icons/category/school.png',
            'Учебный центр',
          ),
          const SizedBox(height: 7),
          widgets().mainButton(
            context,
            const SignInScreen1_2(),
            'assets/icons/category/teach.png',
            'Преподаватель',
          ),
          const SizedBox(height: 7),
          widgets().mainButton(
            context,
            const SignInScreen1_2(),
            'assets/icons/category/pupil.png',
            'Ученик',
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
