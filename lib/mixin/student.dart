import 'package:flutter/material.dart';

mixin Adult {
  String name = "Xyrel";
}
mixin StudentsInfo on Adult {
  late int age;
}

mixin CheckAge {
  bool checkStudentAge(age) {
    if (age <= 18) {
      return false;
    }
    return true;
  }
}

mixin Center {
  MainAxisAlignment get centerAlignment => MainAxisAlignment.center;
}

mixin TextSize {
  double textSize() {
    return 24.0;
  }
}

class Students extends StatefulWidget {
  const Students({super.key});

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students>
    with Adult, StudentsInfo, CheckAge, Center, TextSize {
  @override
  void initState() {
    super.initState();

    age = 17;
  }

  @override
  Widget build(BuildContext context) {
    bool isAdult = checkStudentAge(age);

    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: centerAlignment,
          children: [
            Text(
              isAdult ? "Minor" : "Adult",
              style: TextStyle(fontSize: textSize()),
            ),
            Text(name),
          ],
        ),
      ),
    );
  }
}
