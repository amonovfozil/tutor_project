// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage.dart';
import 'package:tutor/apperanse/leadingPageScreens/leadingPage_3.dart';
import 'package:tutor/helper/style_text.dart';
import 'package:tutor/helper/buttonWidgets.dart';

class SignInScreen1_2 extends StatelessWidget {
  const SignInScreen1_2({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final PasswordController = TextEditingController();
    Map<String, String> SignInData = {
      'name': '',
      'surname': '',
      'number': '',
      'password': '',
    };
    void saveNewData() {
      if (!formKey.currentState!.validate()) {
        formKey.currentState!.save();
        // print(SignInData);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => LeadingPage3(
                  function: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const PupilMainPage(),
                    ),
                  ),
                )));
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xFF47406A),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 26),
                Text(
                  'Регистрация',
                  textAlign: TextAlign.center,
                  style: StylesText().style_1(28),
                ),
                const SizedBox(height: 39),
                //1 Entered name
                Text(
                  'Имя',
                  textAlign: TextAlign.center,
                  style: StylesText().style_1(15),
                ),
                const SizedBox(height: 13),
                TextFormField(
                  cursorColor: Colors.amber,
                  decoration: const InputDecoration(
                    fillColor: Color(0xFF69628D),
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  style: StylesText().style_2(16),
                  validator: (name) {
                    if (name == null || name.isEmpty) {
                      return 'введите ваше имя';
                    }
                    return null;
                  },
                  onSaved: (newValue) => SignInData['name'] = newValue!,
                ),
                const SizedBox(height: 13),
                //2 Entered Surname
                Text(
                  'Фамилия',
                  textAlign: TextAlign.center,
                  style: StylesText().style_1(15),
                ),
                const SizedBox(height: 13),
                TextFormField(
                  cursorColor: Colors.amber,
                  decoration: const InputDecoration(
                    fillColor: Color(0xFF69628D),
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  style: StylesText().style_2(16),
                  validator: (surname) {
                    if (surname == null || surname.isEmpty) {
                      return 'введите вашу фамилию';
                    }
                    return null;
                  },
                  onSaved: (newValue) => SignInData['surname'] = newValue!,
                ),
                const SizedBox(height: 13),
                //3 Entered phone number
                Text(
                  'Номер телефона',
                  textAlign: TextAlign.center,
                  style: StylesText().style_1(15),
                ),
                const SizedBox(height: 13),
                TextFormField(
                  cursorColor: Colors.amber,
                  decoration: const InputDecoration(
                    fillColor: Color(0xFF69628D),
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  style: StylesText().style_2(16),
                  validator: (number) {
                    if (number == null || number.isEmpty) {
                      return 'Введите свой номер телефона';
                    }
                    return null;
                  },
                  onSaved: (newValue) => SignInData['number'] = newValue!,
                ),
                const SizedBox(height: 13),
                //4 Entered password
                Text(
                  'Пароль',
                  textAlign: TextAlign.center,
                  style: StylesText().style_1(15),
                ),
                const SizedBox(height: 13),
                TextFormField(
                  cursorColor: Colors.amber,
                  controller: PasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    fillColor: Color(0xFF69628D),
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  textInputAction: TextInputAction.next,
                  style: StylesText().style_2(16),
                  validator: (password) {
                    if (password == null || password.isEmpty) {
                      return 'введите пароль';
                    } else if (password.length < 6) {
                      return 'Вы ввели менее 6 символов';
                    }
                    return null;
                  },
                  onSaved: (newValue) => SignInData['password'] = newValue!,
                ),
                const SizedBox(height: 13),
                //5 Check password
                Text(
                  'Подтвердить пароль',
                  textAlign: TextAlign.center,
                  style: StylesText().style_1(15),
                ),
                const SizedBox(height: 13),
                TextFormField(
                  cursorColor: Colors.amber,
                  obscureText: true,
                  decoration: const InputDecoration(
                    fillColor: Color(0xFF69628D),
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  textInputAction: TextInputAction.next,
                  style: StylesText().style_2(16),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Повторно введите свой пароль';
                    } else if (value != PasswordController.text) {
                      return 'Пароль не подтвержден';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 62),
                widgets().Button_1('Зарегестрироваться', saveNewData,const Color(0xFFF4B840))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
