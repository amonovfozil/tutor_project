// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tutor/helper/style_text.dart';

class BalansScreen extends StatelessWidget {
  const BalansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 46),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Способы пополнения:',
                        style: StylesText().style_1_11(15),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
