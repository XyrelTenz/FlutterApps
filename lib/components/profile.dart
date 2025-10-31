import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.profiles});

  final String profiles;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green[100],
                ),
                child: Text(profiles, textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
