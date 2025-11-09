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

mixin UserValidation on Validation {
  String _email = "";

  set email(String value) {
    if (checkEmail(value)) {
      _email = value;
    } else {
      checkFormat("Invalid Format");
    }
  }

  String get email => _email;
}

mixin Validation {
  bool checkEmail(String email) {
    return email.contains("@");
  }

  String checkFormat(String email) {
    return email;
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
    with
        Adult,
        StudentsInfo,
        CheckAge,
        Center,
        TextSize,
        Validation,
        UserValidation {
  @override
  void initState() {
    super.initState();

    age = 17;
    email = "xdemocrito@gmail.com";
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isAdult = checkStudentAge(age);

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: centerAlignment,
            children: [
              Text(
                isAdult ? "Minor" : "Adult",
                style: TextStyle(fontSize: textSize()),
              ),
              Text(name),
              TextField(
                controller: _controller,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
