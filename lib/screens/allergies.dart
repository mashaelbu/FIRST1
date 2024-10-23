import 'package:first1/models/customprogressbar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:first1/list/listallergies.dart';
import 'package:first1/models/myappbar.dart';

class Allergies extends StatefulWidget {
  const Allergies({super.key});

  @override
  State<Allergies> createState() => _AllergiesState();
}

class _AllergiesState extends State<Allergies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Myappbar(),
          const CustomProgressBar(currentStep: 2),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'Select your allergies',
                style: TextStyle(
                    color: Color(0xFF4B7e80),
                    fontFamily: 'Lato',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: AnimationLimiter(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150.0,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0.0,
                  childAspectRatio: 1,
                ),
                itemCount: myalleries.length,
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredGrid(
                    position: index,
                    duration: const Duration(milliseconds: 500),
                    columnCount: 3,
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: myalleries[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(30.0), // ضبط قيمة الانحناء حسب الحاجة
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'homepage');
                },
                child: Container(
                  width: 125.0,
                  height: 50.0,
                  color: const Color(0xFF4B7e80),
                  // يمكنك تخصيص اللون هنا أو استخدام BoxDecoration
                  child: const Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'lato',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
