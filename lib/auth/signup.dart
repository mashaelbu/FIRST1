// ignore_for_file: use_build_context_synchronously

import 'package:first1/models/customprogressbar.dart';
import 'package:flutter/material.dart';
import 'package:first1/models/customtextfield.dart';
import 'package:first1/models/myappbar.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formstate,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Myappbar(),
              const SizedBox(
                height: 10,
              ),
              CustomProgressBar(currentStep: 1),
              const Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff387f7f)),
              ),
              const SizedBox(
                height: 10,
              ),
              Custom_TextField(
                hinttext: "username",
                icon: Icons.person_rounded,
                mycontroller: username,
              ),
              Custom_TextField(
                hinttext: "Email",
                icon: Icons.email_outlined,
                mycontroller: email,
              ),
              Custom_TextField(
                hinttext: "password",
                icon: Icons.lock_open,
                mycontroller: password,
                obscure: true,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                buttonname: 'Sign Up',
                onPressed: () async {
                  if (username.text != '' &&
                      email.text != '' &&
                      password.text != '') {
                    print(email.text);
                    print("++++++++++++++++++++++++++=");
                    Navigator.of(context).pushReplacementNamed("allergies");
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Color(0xff387f7f),
                        duration: Duration(seconds: 2),
                        content: Row(
                          children: [
                            Text(
                              "The Fields Can't To Be Empty   ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.warning_amber_rounded,
                              color: Colors.orange,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  const Positioned(
                      top: 0,
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Divider(
                        color: Colors.black,
                        height: 5,
                      )),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      color: Colors.white,
                      child: const Text(
                        "or",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("homepage");
                },
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    border: const Border(
                      right: BorderSide(
                          color: Color.fromARGB(255, 100, 98, 98), width: 2),
                      left: BorderSide(
                          color: Color.fromARGB(255, 100, 98, 98), width: 2),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/9.png",
                        height: 30,
                        width: 30,
                      ),
                      const Text(
                        "      Sign up with Google",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already Have an acount?"),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("signin");
                    },
                    child: const Text(
                      "Sign in now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff387f7f)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
