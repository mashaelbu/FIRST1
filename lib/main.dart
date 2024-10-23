import 'package:first1/auth/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:first1/auth/signin.dart';
import 'package:first1/auth/signup.dart';
import 'package:first1/auth/verify_email.dart';
import 'package:first1/auth/welcom.dart';
import 'package:first1/screens/account.dart';
import 'package:first1/screens/allergies.dart';
import 'package:first1/screens/homepage.dart';

String name = "Alaa";
String em = "alaa@gmail.com";
String pw = "a*********3";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Account(
        username: '',
        password: '',
        email: '',
      ),
      routes: {
        'allergies': (context) => const Allergies(),
        'account': (context) =>
            Account(username: name, email: em, password: pw),
        "signin": (context) => const SignIn(),
        "signup": (context) => const SignUp(),
        "homepage": (context) => const Homepage(),
        "verify": (context) => const Email_Verify(),
        "resetpassword": (context) => const ResetPassWord(),
      },
    );
  }
}
