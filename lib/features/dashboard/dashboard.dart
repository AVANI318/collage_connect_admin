import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Wrap(
            children: [
              DashboardItem(
                count: '10',
                label: 'Collages',
                color: Color(0xFFA9E4FA),
              ),
              SizedBox(width: 12),
              DashboardItem(
                count: '14',
                label: 'Sudents',
                color: Color(0xFFFFE4BC),
              ),
              SizedBox(width: 12),
              DashboardItem(
                count: '7',
                label: 'Canteen',
                color: Color(0xFFF8BAB9),
              ),
              SizedBox(width: 12),
              DashboardItem(
                count: '20',
                label: 'Results',
                color: Color(0xFFE0E2E2),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'New Students',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: DataTable2(
                        columnSpacing: 12,
                        horizontalMargin: 12,
                        columns: const [
                          DataColumn2(
                              label: Text('Student Name'), size: ColumnSize.L),
                          DataColumn(label: Text('ID')),
                          DataColumn(label: Text('Course')),
                          DataColumn(label: Text('Join Date')),
                          DataColumn2(
                              label: Text('Status'),
                              size: ColumnSize.S,
                              numeric: true),
                        ],
                        rows: List<DataRow>.generate(
                          10,
                          (index) => DataRow(
                            cells: [
                              DataCell(
                                const Text('Student Name'),
                              ),
                              DataCell(Text('STU${1000 + index}')),
                              const DataCell(Text('Computer Science')),
                              const DataCell(Text('Feb 20, 2025')),
                              DataCell(
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Text(
                                    'Active',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final String count;
  final String label;
  final Color color;

  const DashboardItem({
    super.key,
    required this.count,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: color,
            child: Text(
              count,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Black text inside circle
              ),
            ),
          ),
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black, // White text
            ),
          ),
        ],
      ),
    );
  }
}
