import 'package:flutter/material.dart';
import 'package:flutter_application_1/common_widget/custom_alert_dialog.dart';
import 'package:flutter_application_1/common_widget/custom_button.dart';
import 'package:flutter_application_1/common_widget/custom_text_formfield.dart';
import 'package:flutter_application_1/util/value_validator.dart';

class AddCollege extends StatefulWidget {
  const AddCollege({super.key});

  @override
  _AddCollegeState createState() => _AddCollegeState();
}

class _AddCollegeState extends State<AddCollege> {
  final TextEditingController _collegeNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressLineController = TextEditingController();
  final TextEditingController _placeController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();

  @override
  void dispose() {
    _collegeNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressLineController.dispose();
    _placeController.dispose();
    _stateController.dispose();
    _pincodeController.dispose();
    _districtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomAlertDialog(
      title: 'Add College',
      content: Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Collage Name',
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
                  labelText: 'College Name',
                  controller: _collegeNameController,
                  validator: notEmptyValidator,
                  isLoading: false),
              const Text(
                'Collage Email Id',
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
                  labelText: 'Enter college email id',
                  controller: _emailController,
                  validator: notEmptyValidator,
                  isLoading: false),
              const Text(
                'Password',
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
                  labelText: 'Enter password',
                  controller: _passwordController,
                  validator: notEmptyValidator,
                  isLoading: false),
              const Text(
                'Phone Number',
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
                  labelText: 'Enter phone number',
                  controller: _phoneController,
                  validator: notEmptyValidator,
                  isLoading: false),
              const Text(
                'Address Line',
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
                  labelText: 'Enter address line',
                  controller: _addressLineController,
                  validator: notEmptyValidator,
                  isLoading: false),
              const Text(
                'Place',
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
                  labelText: 'enter place',
                  controller: _placeController,
                  validator: notEmptyValidator,
                  isLoading: false),
              const Text(
                'State',
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
                  labelText: 'Enter state',
                  controller: _stateController,
                  validator: notEmptyValidator,
                  isLoading: false),
              const Text(
                'Pincode',
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
                  labelText: 'Enter pincode',
                  controller: _pincodeController,
                  validator: pincodeValidator,
                  isLoading: false),
              const Text(
                'District',
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
                  labelText: 'Enter district',
                  controller: _districtController,
                  validator: notEmptyValidator,
                  isLoading: false),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                inverse: true,
                onPressed: () {},
                label: 'Add Collage',
              )
            ],
          ),
        ),
      ),
    );
  }
}
