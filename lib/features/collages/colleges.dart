import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter_application_1/common_widget/custom_button.dart';
import 'package:flutter_application_1/common_widget/custom_search.dart';
import 'package:flutter_application_1/common_widget/edit_delete_button.dart';
import 'package:flutter_application_1/features/collages/add_collage.dart';

class CollegesScreen extends StatelessWidget {
  const CollegesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Colleges',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 300,
                    child: CustomSearch(
                      onSearch: (p0) {},
                    ),
                  ),
                  const SizedBox(width: 15),
                  CustomButton(
                    inverse: true,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const AddCollege(),
                      );
                    },
                    label: 'Add College',
                    iconData: Icons.add,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: DataTable2(
                  columnSpacing: 12,
                  horizontalMargin: 12,
                  minWidth: 700,
                  dataRowHeight: 56,
                  border: TableBorder(
                    horizontalInside: BorderSide(
                      color: Colors.grey.shade300,
                      width: 0.5,
                    ),
                  ),
                  columns: const [
                    DataColumn2(
                        label: Text('College Name'), size: ColumnSize.L),
                    DataColumn(label: Text('Location')),
                    DataColumn(label: Text('Students')),
                    DataColumn(label: Text('Email')),
                    DataColumn2(
                      label: Align(
                          alignment: Alignment.centerRight,
                          child: Text('Action')),
                      numeric: true,
                      size: ColumnSize.L,
                    ),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('Tech Institute of Engineering')),
                      DataCell(Text('New York, USA')),
                      DataCell(Text('2500')),
                      DataCell(Text('tenga@gmail.com')),
                      DataCell(EditDeleteButton())
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Business School of Economics')),
                      DataCell(Text('London, UK')),
                      DataCell(Text('1800')),
                      DataCell(Text('manga@gmail.com')),
                      DataCell(EditDeleteButton())
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
