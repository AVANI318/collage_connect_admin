import 'package:flutter/material.dart';

class AdminReportsTab extends StatelessWidget {
  const AdminReportsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> reportList = [
      {
        "user": "John Doe",
        "canteen": "Sunrise Canteen",
        "reason": "Expired food items",
        "date": "Feb 18, 2025",
      },
      {
        "user": "Alice Smith",
        "canteen": "Green Leaf Cafe",
        "reason": "Overpriced menu items",
        "date": "Feb 16, 2025",
      },
      {
        "user": "David Johnson",
        "canteen": "Fast Bites",
        "reason": "Unhygienic conditions",
        "date": "Feb 15, 2025",
      },
      {
        "user": "Sarah Lee",
        "canteen": "Tasty Treats",
        "reason": "Rude staff behavior",
        "date": "Feb 14, 2025",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: reportList.length,
        itemBuilder: (context, index) {
          final report = reportList[index];

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.grey, width: 1.2),
            ),
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        report["canteen"],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        report["date"],
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Reported by: ${report["user"]}",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Reason: ${report["reason"]}",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
