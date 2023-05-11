// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:tutor/helper/style_text.dart';

class SelectDropDownButton extends StatefulWidget {
  final List iteams;
  late String initialvalue;
  SelectDropDownButton(
      {required this.iteams, required this.initialvalue, super.key});

  @override
  State<SelectDropDownButton> createState() => _SelectDropDownButtonState();
}

class _SelectDropDownButtonState extends State<SelectDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButton(
          style: StylesText().style_4(14),
          isExpanded: true,
          value: widget.initialvalue,
          underline: Container(),
          items: widget.iteams
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(e),
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              widget.initialvalue = value!.toString();
            });
          },
        ),
      ),
    );
  }
}
