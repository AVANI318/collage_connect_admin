import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Top stats row
        Row(
          children: [
            _buildStatCard(
              'Revenue',
              '\$143,624',
              Icons.account_balance_wallet,
            ),
            const SizedBox(width: 12),
            _buildStatCard(
              'Collage',
              '12',
              Icons.pie_chart,
            ),
            const SizedBox(width: 12),
            _buildStatCard(
              'Students',
              '7',
              Icons.people,
            ),
            const SizedBox(width: 12),
            _buildStatCard(
              'Feedback',
              '10',
              Icons.feedback,
            ),
          ],
        ),
        const SizedBox(height: 24),

        // Students table card
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'New Students',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        '+ 18.7%',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 300,
                  child: DataTable2(
                    columnSpacing: 12,
                    horizontalMargin: 12,
                    minWidth: 600,
                    columns: const [
                      DataColumn2(
                        label: Text('Student Name'),
                        size: ColumnSize.L,
                      ),
                      DataColumn(
                        label: Text('ID'),
                      ),
                      DataColumn(
                        label: Text('Course'),
                      ),
                      DataColumn(
                        label: Text('Join Date'),
                      ),
                      DataColumn2(
                        label: Text('Status'),
                        size: ColumnSize.S,
                      ),
                    ],
                    rows: List<DataRow>.generate(
                      10,
                      (index) => DataRow(
                        cells: [
                          DataCell(
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.grey[200],
                                  child: Text('${index + 1}'),
                                ),
                                const SizedBox(width: 8),
                                const Text('Student Name'),
                              ],
                            ),
                          ),
                          DataCell(Text('STU${1000 + index}')),
                          const DataCell(Text('Computer Science')),
                          const DataCell(Text('Feb 20, 2025')),
                          DataCell(
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Active',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
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
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: Colors.blue),
              const SizedBox(height: 8),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
