// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:first1/auth/resetpassword.dart';
import 'package:first1/models/customtextfield.dart';
import 'package:first1/models/myappbar.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

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
              const Text(
                "Log in",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff387f7f),
                ),
              ),
              const SizedBox(height: 20),
              Custom_TextField(
                hinttext: "email",
                icon: Icons.email_outlined,
                mycontroller: email,
              ),
              Custom_TextField(
                hinttext: "password",
                icon: Icons.lock_open,
                mycontroller: password,
                obscure: true,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.topRight,
                child: InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () async {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const ResetPassWord(),
                      ),
                    );
                  },
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff387f7f)),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomButton(
                  buttonname: 'Log In',
                  onPressed: () {
                    if (email.text != '' && password.text != '') {
                      print(email.text);
                      print("++++++++++++++++++++++++++=");
                      Navigator.of(context).pushReplacementNamed("homepage");
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
                  }),
              const SizedBox(height: 25),
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
                        "OR",
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
                  // margin: EdgeInsets.symmetric(horizontal: 60),
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
                        "      Log in with Google",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have an acount?      "),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("signup");
                    },
                    child: const Text(
                      "Sign up now",
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