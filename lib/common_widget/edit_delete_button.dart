import 'package:flutter/material.dart';

class EditDeleteButton extends StatelessWidget {
  const EditDeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.edit,
            color: Colors.blue,
          )),
      const SizedBox(
        width: 20,
      ),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.delete,
            color: Colors.orange,
          ))
    ]);
  }
}
