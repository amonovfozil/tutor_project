import 'package:flutter/material.dart';
import 'package:tutor/apperanse/widgets/select_DropDownButton.dart';
import 'package:tutor/helper/Widgets.dart';
import 'package:tutor/helper/style_text.dart';

class EmploymentList extends StatelessWidget {
  const EmploymentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Шахматка занятости',
              textAlign: TextAlign.left,
              style: StylesText().style_1_11(25),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: widgets().creatInputWidget(
                      'Укажите время', TextInputType.datetime, (value) {
                    if (value.isEmpty) {
                      return 'Введите год поступления';
                    }
                    return null;
                  }, (newvalue) {}, false),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'День недели',
                        textAlign: TextAlign.center,
                        style: StylesText().style_2_11(16, false),
                      ),
                      const SizedBox(height: 13),
                      SelectDropDownButton(iteams: const [
                        'Понедельник',
                        'Вторник',
                        'Среда',
                        'Четверг',
                        'Пятница',
                        'Суббота',
                        'Воскресенье',
                      ], initialvalue: 'Понедельник', getvalue: () {}),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: widgets().creatInputWidget(
                      'Укажите время', TextInputType.datetime, (value) {
                    if (value.isEmpty) {
                      return 'Введите год поступления';
                    }
                    return null;
                  }, (newvalue) {}, false),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'День недели',
                        textAlign: TextAlign.center,
                        style: StylesText().style_2_11(16, false),
                      ),
                      const SizedBox(height: 13),
                      SelectDropDownButton(iteams: const [
                        'Понедельник',
                        'Вторник',
                        'Среда',
                        'Четверг',
                        'Пятница',
                        'Суббота',
                        'Воскресенье',
                      ], initialvalue: 'Понедельник', getvalue: () {}),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 280),
            widgets().Button_1('Изменить', () {}, const Color(0xFF47406A))
          ],
        ),
      ),
    );
  }
}
