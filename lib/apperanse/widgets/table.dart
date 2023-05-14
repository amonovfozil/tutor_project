import 'package:flutter/material.dart';
import 'package:tutor/helper/style_text.dart';

class TableDesign extends StatefulWidget {
  const TableDesign({
    Key? key,
  }) : super(key: key);

  @override
  State<TableDesign> createState() => _TableDesignState();
}

class _TableDesignState extends State<TableDesign> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: true,
      scrollDirection: Axis.horizontal,
      child: DataTable(
        border: TableBorder.all(),
        columns: [
          DataColumn(
            label: Text(
              '     ',
              style: StylesText().style_2_11(14, true),
            ),
          ),
          DataColumn(
            label: Text(
              'Понедельник',
              style: StylesText().style_2_11(14, true),
            ),
          ),
          DataColumn(
            label: Text(
              'Вторник',
              style: StylesText().style_2_11(14, true),
            ),
          ),
          DataColumn(
            label: Text(
              'Среда',
              style: StylesText().style_2_11(14, true),
            ),
          ),
          DataColumn(
            label: Text(
              'четверг',
              style: StylesText().style_2_11(14, true),
            ),
          ),
          DataColumn(
            label: Text(
              'пятница',
              style: StylesText().style_2_11(14, true),
            ),
          ),
          DataColumn(
            label: Text(
              'суббота',
              style: StylesText().style_2_11(14, true),
            ),
          ),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(
                Text(
                  '08:00-10:00',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  '10:00-12:00',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  ' ',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  '',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  '',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  '14:00-16:00',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  '',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  ' ',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  'Занятие',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
              DataCell(
                Text(
                  '',
                  style: StylesText().style_2_11(14, true),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//iniital value for start range and end range
