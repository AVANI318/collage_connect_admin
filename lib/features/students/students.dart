import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter_application_1/common_widget/custom_search.dart';
import 'package:flutter_application_1/features/students/student_view_detail_screen.dart';

class StudentTable extends StatelessWidget {
  const StudentTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Students',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomSearch(
                    onSearch: (p0) {},
                  )
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 500,
                child: DataTable2(
                  columnSpacing: 12,
                  horizontalMargin: 12,
                  minWidth: 600,
                  columns: const [
                    DataColumn2(
                        label: Text('Student Name'), size: ColumnSize.L),
                    DataColumn(label: Text('Course')),
                    DataColumn(label: Text('Year')),
                    DataColumn(label: Text('Status')),
                    DataColumn(label: Text('Details'), numeric: true),
                  ],
                  rows: [
                    DataRow(cells: [
                      const DataCell(Text('Alice Johnson',
                          overflow: TextOverflow.ellipsis)),
                      const DataCell(Text('Computer Science')),
                      const DataCell(Text('2nd Year')),
                      DataCell(Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text('Active',
                            style:
                                TextStyle(color: Colors.green, fontSize: 12)),
                      )),
                      DataCell(TextButton(
                          child: const Text('View Details'), onPressed: () {})),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text('Michael Smith',
                          overflow: TextOverflow.ellipsis)),
                      const DataCell(Text('Mechanical Engineering')),
                      const DataCell(Text('3rd Year')),
                      DataCell(Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text('On Hold',
                            style:
                                TextStyle(color: Colors.orange, fontSize: 12)),
                      )),
                      DataCell(TextButton(
                          child: const Text('View Details'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const StudentViewDetailScreen(),
                                ));
                          })),
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
