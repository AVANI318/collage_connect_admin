import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter_application_1/common_widget/custom_button.dart';
import 'package:flutter_application_1/common_widget/custom_search.dart';
import 'package:flutter_application_1/common_widget/edit_delete_button.dart';
import 'package:flutter_application_1/features/collages/add_collage.dart';
import 'package:flutter_application_1/features/collages/student_list_screen.dart';

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
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const AddCollege(),
                      );
                    },
                    color: Colors.white,
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
                    DataColumn2(label: Text('Details'), size: ColumnSize.S),
                    DataColumn2(
                        label: Text('Action'),
                        numeric: true,
                        size: ColumnSize.S),
                  ],
                  rows: [
                    DataRow(cells: [
                      const DataCell(Text('Tech Institute of Engineering')),
                      const DataCell(Text('New York, USA')),
                      const DataCell(Text('2500')),
                      const DataCell(Text('tenga@gmail.com')),
                      DataCell(TextButton(
                        child: const Text('View Details'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StudetListScreen()),
                          );
                        },
                      )),
                      const DataCell(EditDeleteButton())
                    ]),
                    DataRow(cells: [
                      const DataCell(Text('Business School of Economics')),
                      const DataCell(Text('London, UK')),
                      const DataCell(Text('1800')),
                      const DataCell(Text('manga@gmail.com')),
                      DataCell(TextButton(
                        child: const Text('View Details'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StudetListScreen()),
                          );
                        },
                      )),
                      const DataCell(EditDeleteButton())
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
