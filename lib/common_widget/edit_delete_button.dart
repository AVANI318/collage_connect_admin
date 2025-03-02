import 'package:flutter/material.dart';

import '../features/collages/student_list_screen.dart';

class EditDeleteButton extends StatelessWidget {
  const EditDeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.orange,
            )),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
        TextButton(
          child: const Text('View Details'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const StudetListScreen()),
            );
          },
        )
      ],
    );
  }
}
