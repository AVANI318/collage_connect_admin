import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Wrap(
          children: [
            DashboardItem(
              icon: Icons.account_balance_wallet,
              title: '\$143,624',
              subTitle: 'Revenue',
            ),
            SizedBox(width: 12),
            DashboardItem(
              icon: Icons.pie_chart,
              title: '12',
              subTitle: 'Collage',
            ),
            SizedBox(width: 12),
            DashboardItem(
              icon: Icons.people,
              title: '7',
              subTitle: 'Students',
            ),
            SizedBox(width: 12),
            DashboardItem(
              icon: Icons.storefront,
              title: '7',
              subTitle: 'Canteen',
            ),
          ],
        ),
        const SizedBox(height: 24),
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        '+ 18.7%',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w500),
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
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Active',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 12),
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
}

class DashboardItem extends StatelessWidget {
  const DashboardItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });
  final IconData icon;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: tertiaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(subTitle, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
            Icon(icon, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
