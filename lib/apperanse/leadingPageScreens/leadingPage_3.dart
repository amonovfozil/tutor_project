// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tutor/helper/style_text.dart';
import 'package:tutor/helper/Widgets.dart';

class LeadingPage3 extends StatelessWidget {
  final Function function;
  const LeadingPage3({required this.function, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF47406A),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Center(
                  child: Image.asset(
                    'assets/logo/logo.png',
                    width: 254,
                    height: 254,
                  ),
                ),
              ),
              SizedBox(
                width: 275,
                height: 90,
                child: Text(
                  'Введите код, полученный в SMS',
                  textAlign: TextAlign.center,
                  style: StylesText().style_1(28),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: PinCodeTextField(
                  appContext: context,
                  length: 5,
                  textStyle: StylesText().style_1(38),
                  obscureText: false,
                  animationType: AnimationType.slide,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    fieldHeight: 50,
                    fieldWidth: 40,
                    inactiveColor: Colors.white,
                    activeColor: Colors.white,
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 58),
              widgets().Button_1('Войти в ЛК', function,const Color(0xFFF4B840)),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  'Повторная отправка кода в сообщениивозможна через 0:54',
                  textAlign: TextAlign.center,
                  style: StylesText().style_2_1(16, false),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Отправить код ещё раз',
                textAlign: TextAlign.center,
                style: StylesText().style_2_1(16, false),
              ),
              const SizedBox(
                width: 195,
                child: Divider(
                  color: Color(0xFFC9C9C9),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
