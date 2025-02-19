import 'package:flutter/material.dart';

class AdminFeedbackTab extends StatelessWidget {
  const AdminFeedbackTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> feedbackList = [
      {"user": "John Doe", "message": "Great service!", "date": "Feb 18, 2025"},
      {
        "user": "Alice Smith",
        "message": "Needs improvement.",
        "date": "Feb 16, 2025"
      },
      {
        "user": "David Johnson",
        "message": "Good but a few bugs.",
        "date": "Feb 15, 2025"
      },
      {
        "user": "Sarah Lee",
        "message": "Not satisfied.",
        "date": "Feb 14, 2025"
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: feedbackList.length,
        itemBuilder: (context, index) {
          final feedback = feedbackList[index];

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
                        feedback["user"],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        feedback["date"],
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    feedback["message"],
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
