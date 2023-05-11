// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/helper/buttonWidgets.dart';
import 'package:tutor/helper/style_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final PasswordController = TextEditingController();
    Map<String, String> SignInData = {
      'id': '',
      'name': '',
      'number': '',
      'password': '',
    };
    void saveNewData() {
      if (!formKey.currentState!.validate()) {
        formKey.currentState!.save();
        // print(SignInData);

      }
    }

    return SizedBox(
      width: double.infinity,
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 18),
              Text(
                'Личные данные',
                style: StylesText().style_1_11(23),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 130,
                child: Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset('assets/images/avatar.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF47406A),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Text(
                'Имя',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              TextFormField(
                cursorColor: Colors.amber,
                decoration: const InputDecoration(
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                style: StylesText().style_2_11(16, false),
                validator: (name) {
                  if (name == null || name.isEmpty) {
                    return 'Введите идентификатор контракта';
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
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              TextFormField(
                cursorColor: Colors.amber,
                decoration: const InputDecoration(
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                style: StylesText().style_2_11(16, false),
                validator: (surname) {
                  if (surname == null || surname.isEmpty) {
                    return 'Введите название учебного центра';
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
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              TextFormField(
                cursorColor: Colors.amber,
                decoration: const InputDecoration(
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                style: StylesText().style_2_11(16, false),
                validator: (number) {
                  if (number == null || number.isEmpty) {
                    return 'Введите свой номер телефона';
                  }
                  return null;
                },
                onSaved: (newValue) => SignInData['number'] = newValue!,
              ),
              const SizedBox(height: 13),
              //2 Entered Surname
              Text(
                'Email',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              TextFormField(
                cursorColor: Colors.amber,
                decoration: const InputDecoration(
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                style: StylesText().style_2_11(16, false),
                validator: (surname) {
                  if (surname == null || surname.isEmpty) {
                    return 'Введите название учебного центра';
                  }
                  return null;
                },
                onSaved: (newValue) => SignInData['surname'] = newValue!,
              ),
              const SizedBox(height: 13),
              const SizedBox(height: 13),
              //2 Entered Surname
              Text(
                'Страна',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              TextFormField(
                cursorColor: Colors.amber,
                decoration: const InputDecoration(
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                style: StylesText().style_2_11(16, false),
                validator: (surname) {
                  if (surname == null || surname.isEmpty) {
                    return 'Введите название учебного центра';
                  }
                  return null;
                },
                onSaved: (newValue) => SignInData['surname'] = newValue!,
              ),
              const SizedBox(height: 13),
              //2 Entered Surname
              Text(
                'Регион',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              TextFormField(
                cursorColor: Colors.red,
                decoration: const InputDecoration(
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                style: StylesText().style_2_11(16, false),
                validator: (surname) {
                  if (surname == null || surname.isEmpty) {
                    return 'Введите название учебного центра';
                  }
                  return null;
                },
                onSaved: (newValue) => SignInData['surname'] = newValue!,
              ),
              //4 Entered password
              Text(
                'Пароль',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              TextFormField(
                cursorColor: Colors.amber,
                controller: PasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                textInputAction: TextInputAction.next,
                style: StylesText().style_2_11(16, false),
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
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              TextFormField(
                cursorColor: Colors.amber,
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Color(0xFFEFEFEF),
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                textInputAction: TextInputAction.next,
                style: StylesText().style_2_11(16, false),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Повторно введите свой пароль';
                  } else if (value != PasswordController.text) {
                    return 'Пароль не подтвержден';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 35),
              widgets()
                  .Button_1('Изменить', saveNewData, const Color(0xFF47406A)),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
