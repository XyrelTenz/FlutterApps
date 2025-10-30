// import 'dart:io';

import 'package:flutter/material.dart';
// import 'auth/login.dart';
import "auth/login2.dart";
// import "auth/login3.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Root widge
      home: Login2(),
    );
  }
}

// class LoginForm extends StatelessWidget {
//   LoginForm({super.key});

//   final TextEditingController usernameController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Column(
//                   children: [
//                     // Username
//                     SizedBox(
//                       width: 350.0,
//                       child: TextField(
//                         obscureText: false, // True = Password False = Text
//                         controller: usernameController,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: "Username",
//                           labelStyle: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                     ),

//                     // Spacing or Gaps
//                     const SizedBox(height: 10),

//                     // Password
//                     SizedBox(
//                       width: 350.0,
//                       child: TextField(
//                         obscureText: true,
//                         controller: passwordController,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: "Password",
//                           labelStyle: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                     ),

//                     //Spacing or Gaps
//                     const SizedBox(height: 10),

//                     SizedBox(
//                       width: 350.0,
//                       height: 55.0,
//                       child: TextButton(
//                         onPressed: () {
//                           String username = usernameController.text;
//                           String password = passwordController.text;

//                           print("Username: $username");
//                           print("Password: $password");
//                         },
//                         style: TextButton.styleFrom(
//                           backgroundColor: Colors.blue,
//                           foregroundColor: Colors.black,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.zero,
//                           ),
//                         ),
//                         child: Text("Login"),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
