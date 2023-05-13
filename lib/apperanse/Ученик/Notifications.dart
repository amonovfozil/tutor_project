// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/helper/style_text.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 46),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
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
                ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Уведомления',
                    textAlign: TextAlign.left,
                    style: StylesText().style_1_11(32),
                  ),
                ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: ['1', '2', '3']
                        .map(
                          (paid) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 5),
                                    Text(
                                      'Вам пришло сообщение',
                                      style: StylesText().style_1_11(14),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            'Посмотреть',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFF4B840),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                // Stack(
                //   children: [

                //   ],
                // ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
          ),
          Positioned(
            bottom: 60,
            right: 0,
            child: Image.asset(
              'assets/images/man7.png',
              height: 270,
            ),
          ),
          Positioned(
            bottom: 300,
            left: 40,
            child: Container(
              height: 85,
              width: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                color: Color(0xFF47406A),
              ),
              child: Padding(
                padding: const EdgeInsets.all(17),
                child: Center(
                  child: Text(
                    'Хей, у тебя новое сообщение',
                    style: StylesText().style_1_2(14),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
