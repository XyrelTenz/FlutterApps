import 'package:flutter/material.dart';

class DoubleLayout extends StatelessWidget {
  const DoubleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.grey[100],
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(75),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,

                    child: Center(child: Text("Title")),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue[400],
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(75),
                      ),
                    ),
                    child: Center(child: Text("Login")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
