// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:tutor/apperanse/%D0%A3%D1%87%D0%B5%D0%BD%D0%B8%D0%BA/widgets/select_DropDownButton.dart';
import 'package:tutor/helper/buttonWidgets.dart';
import 'package:tutor/helper/style_text.dart';

enum serchType { teacher, school }

class SearchManegment extends StatefulWidget {
  const SearchManegment({super.key});

  @override
  State<SearchManegment> createState() => _SearchManegmentState();
}

class _SearchManegmentState extends State<SearchManegment> {
  var isSelect = serchType.school;
  RangeLabels? labels;

  var selectedRange = const RangeValues(90, 420);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: SizedBox(
                  width: 12,
                  height: 22,
                  child: Image.asset(
                    'assets/icons/back.png',
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Text(
                'Расширенный поиск',
                textAlign: TextAlign.left,
                style: StylesText().style_1_11(32),
              ),
              const SizedBox(height: 30),
              Text(
                'Выберите тип поиска:',
                style: StylesText().style_1_11(16),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    activeColor: const Color(0xFF47406A),
                    value: serchType.teacher,
                    groupValue: isSelect,
                    onChanged: (value) {
                      setState(() {
                        isSelect = serchType.teacher;
                      });
                    },
                  ),
                  Text(
                    'Преподаватель',
                    style: TextStyle(
                      color: isSelect == serchType.teacher
                          ? const Color(0xFF47406A)
                          : const Color(0xFF9A9A9A),
                      fontFamily: 'Gotham Pro medium',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Radio(
                    activeColor: const Color(0xFF47406A),
                    value: serchType.school,
                    groupValue: isSelect,
                    onChanged: (value) {
                      setState(() {
                        isSelect = serchType.school;
                      });
                    },
                  ),
                  Text(
                    'Учебный центр',
                    style: TextStyle(
                      color: isSelect == serchType.school
                          ? const Color(0xFF47406A)
                          : const Color(0xFF9A9A9A),
                      fontFamily: 'Gotham Pro medium',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Укажите тип занятия:',
                style: StylesText().style_1_11(16),
              ),
              const SizedBox(height: 10),
              SelectDropDownButton(
                iteams: const [
                  'Online через видеоурок',
                  'offline через видеоурок'
                ],
                initialvalue: 'Online через видеоурок',
              ),
              const SizedBox(height: 20),
              Text(
                'Выберите дисциплину:',
                style: StylesText().style_1_11(16),
              ),
              const SizedBox(height: 10),
              SelectDropDownButton(
                iteams: const [
                  'Английский язык',
                  'Русский Русский',
                  'Узбекский  Русский',
                ],
                initialvalue: 'Английский язык',
              ),
              const SizedBox(height: 20),
              Text(
                'Укажите вашу страну',
                style: StylesText().style_1_11(16),
              ),
              const SizedBox(height: 10),
              SelectDropDownButton(
                iteams: const [
                  'Узбекистан',
                  'Рассия',
                  'Америка',
                ],
                initialvalue: 'Узбекистан',
              ),
              const SizedBox(height: 20),
              Text(
                'Укажите ваш регион',
                style: StylesText().style_1_11(16),
              ),
              const SizedBox(height: 10),
              SelectDropDownButton(
                iteams: const [
                  'Ташкентский район',
                  'Бухарский район',
                ],
                initialvalue: 'Ташкентский район',
              ),
              const SizedBox(height: 20),
              Text(
                'Пол преподавателя',
                style: StylesText().style_1_11(16),
              ),
              const SizedBox(height: 10),
              SelectDropDownButton(
                iteams: const [
                  'Женский',
                  'Мужской',
                ],
                initialvalue: 'Женский',
              ),
              const SizedBox(height: 20),
              Text(
                'Рейтинг',
                style: StylesText().style_1_11(16),
              ),
              RangeSlider(
                min: 0,
                max: 500,
                divisions: 100,
                activeColor: const Color(0xFFF4B840),
                inactiveColor: const Color(0xFFF2F2F2),
                //slide interval
                labels: RangeLabels(
                    "${selectedRange.start}", "${selectedRange.end}"),
                values: selectedRange,
                onChanged: (RangeValues value) {
                  setState(() {
                    selectedRange = value;
                  });
                },
              ),
              const SizedBox(height: 40),
              widgets().Button_1('Найти', () {}, const Color(0xFFF4B840)),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
//iniital value for start range and end range
