// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/leadingPageScreens/leadingPage_3.dart';
import 'package:tutor/apperanse/leadingPageScreens/middlePage_1.dart';
import 'package:tutor/helper/style_text.dart';
import 'package:tutor/helper/Widgets.dart';

class LeadingPage2 extends StatelessWidget {
  const LeadingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF47406A),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Center(
                child: Image.asset(
                  'assets/logo/logo2.png',
                  width: 254,
                  height: 231,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                'Авторизация',
                textAlign: TextAlign.center,
                style: StylesText().style_1(28),
              ),
              const SizedBox(height: 10),
              Text(
                'Авторизуйтесь для получения доступа ко всем возможностям системы',
                textAlign: TextAlign.center,
                style: StylesText().style_2(16),
              ),
              const SizedBox(height: 18),
              Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const LeadingPage2(),
                        ),
                      ),
                      child: Card(
                        margin: const EdgeInsets.only(bottom: 7),
                        color: const Color(0xFF69628D),
                        child: SizedBox(
                          height: 61,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: TextFormField(
                              style: StylesText().style_2(16),
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                  hintStyle: StylesText().style_2(16),
                                  hintText: 'Номер телефона или email',
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  alignLabelWithHint: true),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.only(bottom: 7),
                      color: const Color(0xFF69628D),
                      child: SizedBox(
                        height: 61,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            style: StylesText().style_2(16),
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                                hintStyle: StylesText().style_2(16),
                                hintText: 'Пароль',
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                alignLabelWithHint: true),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 51),
                    widgets().Button_1('Войти', () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) => LeadingPage3(
                                function: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => const MiddlePage1(),
                                      ),
                                    ))),
                      );
                    }, const Color(0xFFF4B840)),
                  ],
                ),
              ),
              const SizedBox(height: 17),
              Text(
                'Нет аккаунта?',
                style: StylesText().style_2_2(18),
              ),
              const SizedBox(height: 35),
              Text(
                'или авторизуйтесь при помощи',
                style: StylesText().style_2_1(16, false),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/icons/social/facebook.png',
                    height: 43,
                    width: 43,
                  ),
                  const SizedBox(width: 17),
                  Image.asset(
                    'assets/icons/social/google.png',
                    height: 43,
                    width: 43,
                  ),
                ],
              ),
              // const SizedBox(height: 54),
            ],
          ),
        ),
      ),
    );
  }
}
