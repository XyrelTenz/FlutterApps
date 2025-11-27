// import 'dart:io';
import 'package:flutter/material.dart';
// import "package:flutter_apps/animations/animation_page.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
//Bloc
// import 'package:flutter_apps/bloc/providers/counter_provider.dart';
// import "bloc/counter_bloc.dart";
//Provider
// import "package:provider/provider.dart";
// import "package:flutter_apps/components/herodetails.dart";
// import "package:flutter_riverpod/flutter_riverpod.dart";
// import 'package:flutter_bloc/flutter_bloc.dart';
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
// import "screen/welcome_screen.dart";
// import "screen/bloc_playground.dart";
import "package:flutter_apps/templates/animation_onboarding.dart";
// import "widget/flexible.dart";
// import "widget/wrap.dart";
// import "widget/flow.dart";
// import "methods/set_state.dart";
// import "methods/init_state.dart";
// import "riverpod/helloworld.dart";
// import "riverpod/dateformat.dart";
// import "riverpod/counter.dart";
// import "riverpod/user.dart";
// import "mixin/student.dart";
// import 'screen/login_screen.dart';
import "widget/tab_bar.dart";

void main() => runApp(ProviderScope(child: MainApp()));

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    // providers: [BlocProvider(create: (context) => CounterBloc())],
    // child: MaterialApp(debugShowCheckedModeBanner: false, home: TextState()),
    // );
    return MaterialApp(debugShowCheckedModeBanner: false, home: TabBarWidget());
  }
}
