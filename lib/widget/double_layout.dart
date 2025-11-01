import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DoubleLayout extends StatelessWidget {
  const DoubleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDD6C8),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xFFF9F2ED),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFEDD6C8),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(75),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.navigation,
                              size: 65,
                              color: Color(0xFFC67C4E),
                            ),

                            Text(
                              "School Name",
                              style: TextStyle(
                                color: Color(0xFF313131),
                                fontSize: 30,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xFFEDD6C8),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F2ED),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(75),
                        bottomLeft: Radius.circular(75),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          // onVerticalDragUpdate: slidingContainer,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // alignment: Alignment.topLeft,
                            children: [
                              Container(
                                // alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 15),
                                width: 5,
                                color: Colors.white,
                                // height: 50,
                                // width: 10,
                                child: Container(
                                  width: 5,
                                  height: 5,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsetsGeometry.only(top: 25)),
                        Text("Sign In", style: TextStyle(fontSize: 25)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            obscureText: false,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE3E3E3),
                                  width: 1.5,
                                ),
                              ),
                              hintText: "Student ID",
                              hintStyle: TextStyle(
                                color: Color(0xFF313131),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE3E3E3),
                                  width: 1.5,
                                ),
                              ),
                              hintText: "Password",
                              helperStyle: TextStyle(
                                color: Color(0xFF313131),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Color(0xFFC67C4E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 55,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFFC67C4E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(5),
                              ),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Color(0xFFE3E3E3),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsetsGeometry.only(bottom: 25)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Color(0xFFF9F2ED),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFEDD6C8),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(75),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Color(0xFF313131),
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),

                            const SizedBox(width: 5),

                            Text(
                              "Sign up",
                              style: TextStyle(
                                color: Color(0xFFC67C4E),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
