import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Loginscreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
            margin: const EdgeInsets.only(
                top: 60, bottom: 60, left: 260, right: 200),
            padding: const EdgeInsets.symmetric(horizontal: 100),
            height: 1100,
            width: 1000,
            color: const Color.fromARGB(255, 199, 50, 225),
            child: Row(children: [
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      'Cc',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 80.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const Text(
                      'welcome',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 60.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const Text(
                      '__',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 100.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const Text(
                      'Hello welcome to college connect ,have a good day !!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 230, 69, 29),
                          foregroundColor: Colors.white),
                      child: const Text('learn more'),
                    )
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
                    color: const Color.fromARGB(255, 212, 126, 212),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'sign in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 65.0,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const Text(
                              'username',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              width: 350,
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'User id or mail',
                                    hintStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              'password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              width: 200,
                            ),
                            SizedBox(
                              width: 350,
                              child: TextField(
                                obscureText: isObscure,
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        isObscure = !isObscure;
                                        setState(() {});
                                      },
                                      icon: Icon(isObscure
                                          ? Icons.visibility_off
                                          : Icons.visibility)),
                                  fillColor: Colors.white,
                                  border: const OutlineInputBorder(),
                                  hintText: 'enter your password',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen()));
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(450, 50)),
                                child: const Text('Login')),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
