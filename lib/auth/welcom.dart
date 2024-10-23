import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xff387f7f),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Container(
                child: Image.asset(
              "images/3.png",
              height: 500,
            )),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
                child: Image.asset(
              "images/welcome2.png",
            )),
          ),
          Positioned(
              right: 10,
              bottom: 56,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("signin");
                  },
                  icon: const Icon(
                    Icons.navigate_next_outlined,
                    color: Colors.white,
                    size: 50,
                  ))),
        ],
      ),
    );
  }
}
