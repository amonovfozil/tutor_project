// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tutor/data/Data_IT.dart';
import 'package:tutor/helper/style_text.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<cours> teachers = coursLists().courses;
  cours? teacherData;
  var index;
  void selecTeacher(cours teacher) {
    setState(() {
      index = teachers.indexOf(teacher);
      teacherData = teacher;
    });
    // print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Мои чаты',
            style: StylesText().style_1_11(23),
          ),
        ),
        const SizedBox(height: 25),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: teachers
                  .map(
                    (teacher) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        width: 100,
                        child: InkWell(
                          onTap: () => selecTeacher(teacher),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: Image.asset(
                                  teacher.teacherImg,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                teacher.teachername,
                                textAlign: TextAlign.center,
                                style: index == teachers.indexOf(teacher)
                                    ? StylesText().style_1_11(15)
                                    : StylesText().style_4(15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),

        //animatsia
        if (index == null)
          Stack(
            children: [
              SizedBox(
                height: 450,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: 120,
                right: 10,
                child: Image.asset(
                  'assets/images/man5.png',
                  height: 300,
                ),
              ),
              Positioned(
                top: 70,
                left: 50,
                child: Container(
                  height: 75,
                  width: 210,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      color: Color(0xFF47406A)),
                  child: Center(
                      child: Text(
                    'Выбери получателя',
                    style: StylesText().style_1(14),
                  )),
                ),
              )
            ],
          ),
        if (index != null) ChatField(teacherData!, const []),
      ],
    );
  }
}

class ChatField extends StatefulWidget {
  final cours teacher;
  final List<Map<String, dynamic>> messages;

  const ChatField(this.teacher, this.messages, {super.key});

  @override
  State<ChatField> createState() => _ChatFieldState();
}

class _ChatFieldState extends State<ChatField> {
  final FormKey = GlobalKey<FormState>();
  final controllerText = TextEditingController();
  String? message;

  //function
  void SubmitMessage() {
    FocusScope.of(context).unfocus();

    if (FormKey.currentState!.validate()) {
      FormKey.currentState!.save();
      widget.messages.add(
        {
          'text': message,
          'time': DateTime.now(),
          'userId': 1,
        },
      );
    }
    controllerText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 420,
        child: Form(
          key: FormKey,
          child: Expanded(
            child: Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    Text(
                      'Чат c ${widget.teacher.teachername}',
                      style: StylesText().style_1_11(18),
                    ),
                  ],
                ),
                const Divider(
                  height: 2,
                  color: Colors.black,
                ),
                Expanded(
                  child: ListView(
                    children: widget.messages
                        .map((message) => Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: message['userId'] != 1
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: message['userId'] != 1
                                        ? CrossAxisAlignment.start
                                        : CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: 120,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(10),
                                              topRight:
                                                  const Radius.circular(10),
                                              bottomLeft: message['userId'] == 1
                                                  ? const Radius.circular(10)
                                                  : const Radius.circular(0),
                                              bottomRight: message['userId'] ==
                                                      1
                                                  ? const Radius.circular(0)
                                                  : const Radius.circular(10),
                                            ),
                                            color: const Color(
                                              0xFFF2F2F2,
                                            )),
                                        alignment: message['userId'] != 1
                                            ? Alignment.centerLeft
                                            : Alignment.bottomRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            message['text'],
                                            style: StylesText().style_4(14),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        DateFormat('dd.MM.yy hh:mm').format(
                                            message['time'] as DateTime),
                                        style:
                                            StylesText().style_2_1(10, false),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 240, 240, 240),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          size: 30,
                          color: Color(0xFF9A9A9A),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: controllerText,
                          style: StylesText().style_2_11(14, false),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: 'Напишите сообщение',
                            hintStyle: StylesText().style_2_1(13, false),
                          ),
                          onSaved: (newValue) => message = newValue!.trim(),
                        ),
                      ),
                      IconButton(
                        onPressed: SubmitMessage,
                        icon: const Icon(
                          Icons.arrow_forward_rounded,
                          size: 30,
                          color: Color(0xFF47406A),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
