import 'package:flutter/material.dart';
import 'package:flutter_application_1/common_widget/custom_alert_dialog.dart';
import 'package:flutter_application_1/common_widget/custom_image_picker_button.dart';
import 'package:flutter_application_1/common_widget/custom_text_formfield.dart';
import 'package:flutter_application_1/util/value_validator.dart';

class AddResult extends StatelessWidget {
  AddResult({
    super.key,
  });
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomAlertDialog(
      title: 'Add Result',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImagePickerButton(
            onPick: (file) {},
            height: 200,
            width: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Title',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
              labelText: 'Enter title',
              controller: _titleController,
              validator: notEmptyValidator,
              isLoading: false),
        ],
      ),
    );
  }
}
