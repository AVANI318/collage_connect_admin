import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class StudetListScreen extends StatelessWidget {
  const StudetListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('College name'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'List of students',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
                    DataColumn2(label: Text('Name'), size: ColumnSize.L),
                    DataColumn(label: Text('Collage User ID')),
                    DataColumn(label: Text('Register No.')),
                    DataColumn(label: Text('Department')),
                    DataColumn(label: Text('Course')),
                    DataColumn2(
                        label: Text('Details'),
                        numeric: true,
                        size: ColumnSize.S),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        const DataCell(
                          Text(
                            'Student Name',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        const DataCell(Text('#46564')),
                        const DataCell(Text('MO34BBAR20')),
                        const DataCell(Text('Commerse')),
                        const DataCell(Text('Bcom')),
                        DataCell(TextButton(
                            onPressed: () {},
                            child: const Text('View Details'))),
                      ],
                    )
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
