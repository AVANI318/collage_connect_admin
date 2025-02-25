import 'package:flutter/material.dart';
import 'package:flutter_application_1/common_widget/custom_button.dart';
import 'package:flutter_application_1/common_widget/custom_text_formfield.dart';
import 'package:flutter_application_1/features/home/home_screen.dart';
import 'package:flutter_application_1/util/value_validator.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Loginscreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
            margin: const EdgeInsets.only(
                top: 60, bottom: 60, left: 260, right: 200),
            padding: const EdgeInsets.symmetric(horizontal: 100),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 199, 50, 225),
                borderRadius: BorderRadius.circular(20)),
            child: Row(children: [
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Collage Connect',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 50.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80),
                      child: Divider(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '''Welcome to College Connect! Sign in to stay connected with your campus, network with peers, and access exclusive student resources. Let's make the most of your college journey together!''',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 60, right: 10),
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                        color: Colors.purple[500],
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sign in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 50.0,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const Text(
                            'username',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          CustomTextFormField(
                              labelText: 'Enter email',
                              controller: _emailController,
                              validator: emailValidator,
                              isLoading: false),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'password',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(
                            width: 200,
                          ),
                          CustomTextFormField(
                              labelText: 'Enter password',
                              controller: _passwordController,
                              validator: notEmptyValidator,
                              isLoading: false),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                            label: 'Login',
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
