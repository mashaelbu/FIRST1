import 'package:flutter/material.dart';
import 'header_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectAllergiesScreen(),
    );
  }
}

class SelectAllergiesScreen extends StatefulWidget {
  const SelectAllergiesScreen({super.key});

  @override
  _SelectAllergiesScreenState createState() => _SelectAllergiesScreenState();
}

class _SelectAllergiesScreenState extends State<SelectAllergiesScreen> {
  // قائمة لمتابعة العناصر التي تم تحديدها
  final List<bool> _selectedAllergies = List.generate(9, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            HeaderWidget(), // الهيدر
            const Text(
              "Select your allergies", // نص العنوان
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E947A),
              ),
            ),
            const SizedBox(height: 20),

            // الشبكة التي تحتوي على الأيقونات (9 مربعات)
            Expanded(
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 أيقونات في كل صف
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        // تغيير حالة التحديد عند الضغط
                        _selectedAllergies[index] = !_selectedAllergies[index];
                      });
                    },
                    child: buildAllergyIcon(
                      index,
                      _selectedAllergies[index], // تمرير حالة التحديد
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // زر الحفظ
            ElevatedButton(
              onPressed: () {
                // إضافة التعليق الخاص بحفظ البيانات
                // _saveSelectedAllergies(); // حفظ العناصر المختارة في قاعدة البيانات
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E947A), // لون الزر
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: const Text(
                'Save', // نص الزر
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 30), // مساحة إضافية في الأسفل
          ],
        ),
      ),
    );
  }

  // دالة لبناء كل أيقونة حساسية مع علامة وامكانية تحديدها
  Widget buildAllergyIcon(int index, bool isSelected) {
    // قائمة بأسماء الحساسية والرموز الخاصة بها
    final List<String> allergyNames = [
      'Eggs',
      'Wheat',
      'Dairy',
      'Fish',
      'Shrimp',
      'Soybean',
      'Strawberry',
      'Peanuts',
      'Nuts'
    ];
    final List<String> imagePaths = [
      'Image/egg.png',
      'Image/wheat.png',
      'Image/dairy.png',
      'Image/fish.png',
      'Image/shrimp.png',
      'Image/soybean.png',
      'Image/strawberry.png',
      'Image/peanuts.png',
      'Image/nuts.png',
    ];

    return Container(
      decoration: BoxDecoration(
        // إذا تم تحديد العنصر يتم تغيير لون الخلفية
        color: isSelected
            ? const Color.fromARGB(255, 223, 240, 208)
            : Colors.white,
        // تغيير لون الحواف إذا تم التحديد
        // border: Border.all(
        //color: isSelected ? Color(0xFF1E947A) : Colors.white,
        //width: 2,
        //),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(8, 5), // تأثير الظل
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // صورة الأيقونة
          Image.asset(
            imagePaths[index],
            height: 50, // ارتفاع الأيقونة
          ),
          const SizedBox(height: 10),
          // نص الاسم
          Text(allergyNames[index]),
        ],
      ),
    );
  }

  // دالة لحفظ العناصر المختارة - مؤقتا غير مفعلة
  // void _saveSelectedAllergies() {
  //   // هنا يمكنك إضافة منطق الحفظ في قاعدة البيانات
  // }
}
