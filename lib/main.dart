// import 'dart:io';
import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
// import 'package:flutter_apps/auth/instagram.dart';
// import 'auth/login.dart';
// import "auth/login2.dart";
// import "auth/login3.dart";
// import "widget/bottomnavbar.dart";
// import "widget/expanded.dart";
// import "widget/listview.dart";
// import "screen/home_screen.dart";
// import "auth/instagram.dart";
// import "widget/grid.dart";
// import 'widget/draggable.dart';
// import "widget/resizablecontainer.dart";
// import "animations/animation_page.dart";
// import "widget/gesture_detector.dart";
// import "screen/riverpod_playground.dart";
// import "widget/double_layout.dart";
// import "widget/sliver_appbar.dart";
// import "playgroud/calculator.dart";
// import "widget/form.dart";
// import "widget/styled_widget.dart"k
// import "playgroud/gesture.dart";
// import "widget/hero.dart";
import "screen/welcome_screen.dart";

void main() => runApp(ProviderScope(key: UniqueKey(), child: MainApp()));

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // Root widget
      home: WelcomeScreen(),
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
