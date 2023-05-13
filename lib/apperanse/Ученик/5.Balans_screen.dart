// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/MainPage.dart';
import 'package:tutor/helper/buttonWidgets.dart';
import 'package:tutor/helper/style_text.dart';

class BalansScreen extends StatelessWidget {
  const BalansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    Map<String, dynamic> CardData = {'number': '', 'term': ''};

    //function
    void SubmitSaleData() {
      if (formkey.currentState!.validate()) {
        formkey.currentState!.save();
        print(CardData);
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) =>  const PupilMainPage(0))),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 12,
                    height: 22,
                    child: Image.asset(
                      'assets/icons/back.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Text(
                'Баланс',
                textAlign: TextAlign.left,
                style: StylesText().style_1_11(32),
              ),
              const SizedBox(height: 26),
              Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'На счету: 30.000 сум',
                    style: StylesText().style_1_11(15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 345,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Способы пополнения:',
                        style: StylesText().style_1_11(15),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            height: 120,
                            width: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 245, 245, 245),
                            ),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Image.asset(
                                'assets/images/uzcard.png',
                                height: 66,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                              height: 120,
                              width: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 245, 245, 245),
                              ),
                              alignment: Alignment.center,
                              clipBehavior: Clip.hardEdge,
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  'assets/images/humo.png',
                                  height: 66,
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                          height: 120,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 245, 245, 245),
                          ),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset(
                              'assets/images/visa.png',
                              height: 66,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          'Способы пополнения:',
                          style: StylesText().style_1_11(15),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Номер карты',
                          style: StylesText().style_1_11(13),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 245, 245, 245),
                          ),
                          alignment: Alignment.center,
                          child: TextFormField(
                            style: StylesText().style_2_11(14, false),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Введите номер карты';
                              } else if (value.length < 16 ||
                                  value.length > 16) {
                                return 'Введите 16-значный номер карты';
                              }
                              return null;
                            },
                            onSaved: (newValue) =>
                                CardData['number'] = newValue,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Срок годности',
                          style: StylesText().style_1_11(13),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 245, 245, 245),
                          ),
                          child: TextFormField(
                            style: StylesText().style_2_11(14, false),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Введите Срок годности ex:';
                              }
                              return null;
                            },
                            onSaved: (newValue) => CardData['term'] = newValue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              widgets().Button_1(
                'Пополнить',
                SubmitSaleData,
                const Color(0xFF47406A),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
