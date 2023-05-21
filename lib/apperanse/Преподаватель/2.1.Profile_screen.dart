// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tutor/apperanse/widgets/select_DropDownButton.dart';
import 'package:tutor/helper/Widgets.dart';
import 'package:tutor/helper/style_text.dart';

class ProfileScreen2 extends StatelessWidget {
  const ProfileScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    // final PasswordController = TextEditingController();
    Map<String, dynamic> TeacherInfo = {
      'id': '',
      'name': '',
      'surname': '',
      '3name': '',
      'number': '',
      'email': '',
      'motherLand': '',
      'vellage': '',
      'birthday': '',
      'gender': '',
      'myself': '',
      'category': '',
      'cost': '',
      'costHome': '',
      'costZoom': '',
      'education': '',
      'admission': '',
      'Graduation': '',
      'experience': '',
      'certificate': '',
      'isinclined': '',
      'NameCenter': '',
      'LinkCenter': ''
    };

    void ValueClined(bool value) {
      TeacherInfo['isinclined'] = value;
    }

    void getCertificate(File file) {
      TeacherInfo['certificate'] = file;
    }

    void getSelectValue(String value, String firstvalue) {
      if (firstvalue == 'Казахстан') {
        TeacherInfo['motherLand'] = value;
      } else if (firstvalue == 'Андижанская') {
        TeacherInfo['vellage'] = value;
      } else if (firstvalue == 'Женский') {
        TeacherInfo['gender'] = value;
      } else if (firstvalue == 'IT') {
        TeacherInfo['category'] = value;
      }
    }

    void saveNewData() {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
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
//1 Entered name
              widgets().creatInputWidget('Имя', TextInputType.name, (value) {
                if (value.isEmpty) {
                  return 'введите ваше имя';
                }
              }, (newvalue) => TeacherInfo['name'] = newvalue, false),
              const SizedBox(height: 13),
//2 Entered Surname
              widgets().creatInputWidget('Фамилия', TextInputType.name,
                  (value) {
                if (value.isEmpty) {
                  return 'введите вашу фамилию';
                }
              }, (newvalue) => TeacherInfo['surname'] = newvalue, false),
              const SizedBox(height: 13),
//2 Entered thirdname
              widgets().creatInputWidget('Отчество', TextInputType.name,
                  (value) {
                if (value.isEmpty) {
                  return 'введите вашу Отчество';
                }
              }, (newvalue) => TeacherInfo['3name'] = newvalue, false),

              const SizedBox(height: 13),
//4 Entered phone number
              widgets().creatInputWidget('Номер телефона', TextInputType.number,
                  (value) {
                if (value.isEmpty) {
                  return 'Введите свой номер телефона';
                }
              }, (newvalue) => TeacherInfo['number'] = newvalue, false),

              const SizedBox(height: 13),
//5 Entered email
              widgets().creatInputWidget('Почта', TextInputType.emailAddress,
                  (value) {
                if (value.isEmpty) {
                  return 'Введите свой Почта';
                }
              }, (newvalue) => TeacherInfo['email'] = newvalue, false),
              const SizedBox(height: 13),
//6 Entered motherLand
              Text(
                'Страна',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              SelectDropDownButton(iteams: const [
                '',
                'Казахстан',
                'Кыргызстан',
                'Узбекистан',
                'Туркменистан',
                'Таджикистан'
              ], initialvalue: '', getvalue: getSelectValue),

              const SizedBox(height: 13),
//7 Entered vellage
              Text(
                'Регион',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              SelectDropDownButton(iteams: const [
                '',
                'Андижанская',
                ' Бухарская',
                'Джизакская',
                'Кашкадарьинская',
                'Навоийская',
                'Наманганская',
                'Самаркандская',
                'Сырдарьинская',
                'Сурхандарьинская',
                'Ташкентская',
                'Ферганская',
                'Хорезмская'
              ], initialvalue: '', getvalue: getSelectValue),
              const SizedBox(height: 13),
//8 Entered birthday
              widgets().creatInputWidget('Дата рождения', TextInputType.name,
                  (value) {
                if (value.isEmpty) {
                  return 'введите Дата рождения';
                }
                return null;
              }, (newvalue) => TeacherInfo['birthday'] = newvalue, false),
              const SizedBox(height: 13),
//9 Entered male
              Text(
                'Пол',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              SelectDropDownButton(iteams: const [
                '',
                'Женский',
                'Мужской',
              ], initialvalue: '', getvalue: getSelectValue),
              const SizedBox(height: 13),
//10 Entered about
              widgets().creatInputWidget('О преподавателе', TextInputType.name,
                  (value) {
                if (value.isEmpty) {
                  return 'дать информацию о себе';
                }
                return null;
              }, (newvalue) => TeacherInfo['myself'] = newvalue, false, 6),
              const SizedBox(height: 13),
//11 Entered category
              Text(
                'Категория',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              SelectDropDownButton(iteams: const [
                '',
                'IT',
                'Языки',
              ], initialvalue: '', getvalue: getSelectValue),
              const SizedBox(height: 13),
//12 Entered cost
              widgets().creatInputWidget(
                  'Стоимость у преподавателя', TextInputType.number, (value) {
                if (value.isEmpty) {
                  return 'дать информацию Стоимость у преподавателя';
                }
                return null;
              }, (newvalue) => TeacherInfo['cost'] = newvalue, false),
              const SizedBox(height: 13),
//13 Entered cost home of pupil
              widgets().creatInputWidget('У ученика дома', TextInputType.number,
                  (value) {
                if (value.isEmpty) {
                  return 'дать информацию Стоимость B ученика дома';
                }
                return null;
              }, (newvalue) => TeacherInfo['costHome'] = newvalue, false),
              const SizedBox(height: 13),
//14 Entered cost with zoom
              widgets().creatInputWidget(
                  'Online через zoom', TextInputType.number, (value) {
                if (value.isEmpty) {
                  return 'дать информацию Стоимость Online через zoom';
                }
                return null;
              }, (newvalue) => TeacherInfo['costZoom'] = newvalue, false),
              const SizedBox(height: 13),
//15 Entered education
              widgets().creatInputWidget('Образование', TextInputType.text,
                  (value) {
                if (value.isEmpty) {
                  return 'Предоставление информации об образовании';
                }
                return null;
              }, (newvalue) => TeacherInfo['education'] = newvalue, false),
              const SizedBox(height: 13),
//16 Entered eccept to work
              Row(
                children: [
                  Expanded(
                    child: widgets().creatInputWidget(
                        'Год поступления', TextInputType.datetime, (value) {
                      if (value.isEmpty) {
                        return 'Введите год поступления';
                      }
                      return null;
                    }, (newvalue) => TeacherInfo['admission'] = newvalue,
                        false),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: widgets().creatInputWidget(
                        'Год окончания', TextInputType.datetime, (value) {
                      if (value.isEmpty) {
                        return 'Введите год окончания';
                      }
                      return null;
                    }, (newvalue) => TeacherInfo['Graduation'] = newvalue,
                        false),
                  ),
                ],
              ),
              const SizedBox(height: 13),
//17 Entered carreer
              widgets().creatInputWidget('Опыт работы', TextInputType.text,
                  (value) {
                if (value.isEmpty) {
                  return 'Предоставление информации об Опыт работы';
                }
                return null;
              }, (newvalue) => TeacherInfo['experience'] = newvalue, true),
              const SizedBox(height: 13),
//18 Entered Certificates
              Text(
                'Сертификаты',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              getCertifivationInGalery(getCertificate),
              const SizedBox(height: 13),
//19 Belonging to the training center:
              Text(
                'Принадлежность к учебному центру:',
                textAlign: TextAlign.center,
                style: StylesText().style_2_11(16, false),
              ),
              const SizedBox(height: 13),
              CHexBoxx(ValueClined),
              const SizedBox(height: 13),
//20 Entered password
              widgets().creatInputWidget(
                  'Наименование учебного центра', TextInputType.name,
                  (password) {
                if (password.isEmpty) {
                  return 'Введите название учебного центра';
                }
                return null;
              }, (newvalue) => TeacherInfo['NameCenter'] = newvalue, false),
              const SizedBox(height: 13),
//21 Check password
              widgets().creatInputWidget(
                  'Ссылка на учебный центр', TextInputType.name, (value) {
                if (value.isEmpty) {
                  return 'Введите ссылку на учебный центр';
                }
                return null;
              }, (newvalue) => TeacherInfo['LinkCenter'], false),

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

// ignore: must_be_immutable
class CHexBoxx extends StatefulWidget {
  final Function getValue;
  const CHexBoxx(this.getValue, {super.key});

  @override
  State<CHexBoxx> createState() => _CHexBoxxState();
}

class _CHexBoxxState extends State<CHexBoxx> {
  bool isinclined = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xFFEFEFEF),
          ),
          child: Checkbox(
            side: BorderSide.none,
            activeColor: Colors.transparent,
            checkColor: const Color(0xFF47406A),
            value: isinclined,
            onChanged: (value) {
              setState(() {
                isinclined = !isinclined;
                widget.getValue(isinclined);
              });
            },
          ),
        ),
        const SizedBox(width: 10),
        Text(
          'Да',
          textAlign: TextAlign.center,
          style: StylesText().style_4(16),
        ),
        const SizedBox(width: 50),
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xFFEFEFEF),
          ),
          child: Checkbox(
            side: BorderSide.none,
            activeColor: Colors.transparent,
            checkColor: const Color(0xFF47406A),
            value: !isinclined,
            onChanged: (value) {
              setState(() {
                isinclined = !isinclined;
                widget.getValue(isinclined);
              });
            },
          ),
        ),
        const SizedBox(width: 10),
        Text(
          'Нет',
          textAlign: TextAlign.center,
          style: StylesText().style_4(16),
        ),
      ],
    );
  }
}

class getCertifivationInGalery extends StatefulWidget {
  final Function getFile;
  const getCertifivationInGalery(this.getFile, {Key? key}) : super(key: key);

  @override
  State<getCertifivationInGalery> createState() =>
      _getCertifivationInGaleryState();
}

class _getCertifivationInGaleryState extends State<getCertifivationInGalery> {
  File? img;
  void EnteredCertificate() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      img = File(image!.path);
      widget.getFile(img);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: EnteredCertificate,
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFFEFEFEF),
        ),
        child: img == null
            ? Center(
                child: Text(
                  'Загруженный',
                  style: StylesText().style_4(14),
                ),
              )
            : Image.file(
                img!,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
