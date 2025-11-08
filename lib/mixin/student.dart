import 'package:flutter/material.dart';

mixin StudentsInfo {
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

class Students extends StatefulWidget {
  const Students({super.key});

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> with StudentsInfo, CheckAge {
  @override
  void initState() {
    super.initState();

    age = 17;
  }

  @override
  Widget build(BuildContext context) {
    bool isAdult = checkStudentAge(age);
    return Scaffold(
      body: Column(children: [Text(isAdult ? "Minor" : "Adult")]),
    );
  }
}
