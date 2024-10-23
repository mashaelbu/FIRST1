import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Myappbar extends StatelessWidget {
  late String? title;
  late IconData? exit;
  Myappbar({super.key, this.title, this.exit});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("images/6.png"),
        exit != null
            ? Positioned(
                top: 30,
                left: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil("signin", (route) => false);
                  },
                  icon: Icon(
                    exit,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              )
            : const Text(""),
        Positioned(
          left: 15.0,
          bottom: 5.0,
          child: Text(
            title == null ? '' : title!,
            style: const TextStyle(
                fontSize: 25.0,
                fontFamily: 'Lato',
                color: Color(0xFF4B7e80),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
