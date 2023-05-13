// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/helper/buttonWidgets.dart';
import 'package:tutor/helper/style_text.dart';

class ProfileScreen2 extends StatelessWidget {
  const ProfileScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final PasswordController = TextEditingController();
    Map<String, String> SignInData = {
      'id': '',
      'name': '',
      'surname': '',
      'malename': '',
      'number': '',
      'email': '',
      'motherLand': '',
      'vellage': '',
      'password': '',
    };
    void saveNewData() {
      if (!formKey.currentState!.validate()) {
        formKey.currentState!.save();
        // print(SignInData);
      }
    }

    Widget creatInputWidget(String title, TextInputType typeKeyboard,
        Function(String) validate, Function(String) answer, bool iscon) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: StylesText().style_2_11(16, false),
          ),
          const SizedBox(height: 13),
          TextFormField(
            controller: iscon ? PasswordController : null,
            cursorColor: Colors.amber,
            decoration: const InputDecoration(
              fillColor: Color(0xFFEFEFEF),
              filled: true,
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
            keyboardType: typeKeyboard,
            textInputAction: TextInputAction.next,
            style: StylesText().style_2_11(16, false),
            validator: (value) => validate(value!),
            onSaved: (newValue) => answer(newValue!),
          ),
        ],
      );
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
              creatInputWidget('Имя', TextInputType.name, (value) {
                if (value.isEmpty) {
                  return 'введите ваше имя';
                }
              }, (newvalue) => SignInData['name'] = newvalue, false),
              const SizedBox(height: 13),
              //2 Entered Surname
              creatInputWidget('Фамилия', TextInputType.name, (value) {
                if (value.isEmpty) {
                  return 'введите вашу фамилию';
                }
              }, (newvalue) => SignInData['surname'] = newvalue, false),
              const SizedBox(height: 13),
              //2 Entered malename
              creatInputWidget('Отчество', TextInputType.name, (value) {
                if (value.isEmpty) {
                  return 'введите вашу Отчество';
                }
              }, (newvalue) => SignInData['malename'] = newvalue, false),

              const SizedBox(height: 13),
              //3 Entered phone number
              creatInputWidget('Номер телефона', TextInputType.number, (value) {
                if (value.isEmpty) {
                  return 'Введите свой номер телефона';
                }
              }, (newvalue) => SignInData['number'] = newvalue, false),

              const SizedBox(height: 13),
              //2 Entered email
              creatInputWidget('Почта', TextInputType.emailAddress, (value) {
                if (value.isEmpty) {
                  return 'Введите свой Почта';
                }
              }, (newvalue) => SignInData['email'] = newvalue, false),
              const SizedBox(height: 13),
              //2 Entered motherLand
              creatInputWidget('Страна', TextInputType.name, (value) {
                if (value.isEmpty) {
                  return 'Введите название вашего Страна';
                }
              }, (newvalue) => SignInData['motherLand'] = newvalue, false),

              const SizedBox(height: 13),
              //2 Entered vellage
              creatInputWidget('Регион', TextInputType.name, (value) {
                if (value.isEmpty) {
                  return 'Введите название вашего региона';
                }
              }, (newvalue) => SignInData['vellage'] = newvalue, false),
              const SizedBox(height: 13),

              //4 Entered password
              creatInputWidget('Пароль', TextInputType.name, (password) {
                if (password.isEmpty) {
                  return 'введите пароль';
                } else if (password.length < 6) {
                  return 'Вы ввели менее 6 символов';
                }
                return null;
              }, (newvalue) => SignInData['password'] = newvalue, true),

              const SizedBox(height: 13),
              //5 Check password
              creatInputWidget('Подтвердить пароль', TextInputType.name,
                  (value) {
                if (value.isEmpty) {
                  return 'Повторно введите свой пароль';
                } else if (value != PasswordController.text) {
                  return 'Пароль не подтвержден';
                }
                return null;
              }, (newvalue) => null, false),

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
