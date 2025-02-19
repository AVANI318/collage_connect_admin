import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class StudentTable extends StatelessWidget {
  const StudentTable({Key? key}) : super(key: key);

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
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Total: 30',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 500, // Adjust height accordingly
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
                  ],
                  rows: _buildStudentRows(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DataRow> _buildStudentRows() {
    return [
      _buildStudentRow('Alice Johnson', 'Computer Science', '2nd Year',
          'Active', Colors.green),
      _buildStudentRow('Michael Smith', 'Mechanical Engineering', '3rd Year',
          'On Hold', Colors.orange),
      _buildStudentRow('Jessica Brown', 'Business Administration', '1st Year',
          'Active', Colors.green),
      _buildStudentRow(
          'David Wilson', 'Psychology', '4th Year', 'Inactive', Colors.red),
      _buildStudentRow(
          'Sophia Martinez', 'Mathematics', '2nd Year', 'Active', Colors.green),
    ];
  }

  DataRow _buildStudentRow(String name, String course, String year,
      String status, Color statusColor) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.grey[200],
                child: Text(name[0]),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        DataCell(Text(course)),
        DataCell(Text(year)),
        DataCell(
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              status,
              style: TextStyle(color: statusColor, fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }
}
