import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class CollegesScreen extends StatelessWidget {
  const CollegesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Colleges',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Total: 15',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
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
                    DataColumn(label: Text('Students'), numeric: true),
                    DataColumn(label: Text('Departments'), numeric: true),
                    DataColumn2(label: Text('Status'), size: ColumnSize.S),
                  ],
                  rows: _colleges
                      .map((college) => _buildCollegeRow(college))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DataRow _buildCollegeRow(Map<String, dynamic> college) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.grey[300],
                child: Text(college['name'][0]),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  college['name'],
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        DataCell(Text(college['location'])),
        DataCell(Text(college['students'].toString())),
        DataCell(Text(college['departments'].toString())),
        DataCell(
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: college['statusColor'].withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              college['status'],
              style: TextStyle(
                  color: college['statusColor'],
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}

final List<Map<String, dynamic>> _colleges = [
  {
    'name': 'Tech Institute of Engineering',
    'location': 'New York, USA',
    'students': 2500,
    'departments': 8,
    'status': 'Active',
    'statusColor': Colors.green
  },
  {
    'name': 'Business School of Economics',
    'location': 'London, UK',
    'students': 1800,
    'departments': 5,
    'status': 'Active',
    'statusColor': Colors.green
  },
  {
    'name': 'Medical College of Health',
    'location': 'Toronto, Canada',
    'students': 1200,
    'departments': 6,
    'status': 'Under Review',
    'statusColor': Colors.orange
  },
  {
    'name': 'Arts and Design Academy',
    'location': 'Paris, France',
    'students': 900,
    'departments': 4,
    'status': 'Active',
    'statusColor': Colors.green
  },
  {
    'name': 'Science and Research Institute',
    'location': 'Berlin, Germany',
    'students': 2200,
    'departments': 10,
    'status': 'Active',
    'statusColor': Colors.green
  },
  {
    'name': 'Law School of Justice',
    'location': 'Melbourne, Australia',
    'students': 800,
    'departments': 3,
    'status': 'Pending',
    'statusColor': Colors.blue
  },
  {
    'name': 'Agriculture and Environmental Studies',
    'location': 'Singapore',
    'students': 1500,
    'departments': 6,
    'status': 'Active',
    'statusColor': Colors.green
  },
  {
    'name': 'Digital Media College',
    'location': 'Seoul, South Korea',
    'students': 1100,
    'departments': 4,
    'status': 'Under Review',
    'statusColor': Colors.orange
  },
  {
    'name': 'Hospitality Management Institute',
    'location': 'Dubai, UAE',
    'students': 700,
    'departments': 3,
    'status': 'Active',
    'statusColor': Colors.green
  },
  {
    'name': 'Sports Science Academy',
    'location': 'Rio de Janeiro, Brazil',
    'students': 600,
    'departments': 2,
    'status': 'Inactive',
    'statusColor': Colors.red
  },
];
