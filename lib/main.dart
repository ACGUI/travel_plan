import 'package:flutter/material.dart';

import "package:travel_plan/bloc/counter.dart";
import "package:travel_plan/page/plan.dart";
import "package:travel_plan/page/login.dart";
import "package:travel_plan/page/register.dart";
import "package:travel_plan/page/planForm.dart";
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final CounterBloc _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '行程助手',
      initialRoute: "/login",
      routes: {
        "/": (context) => PlanPage(),
        "/login": (context) => LoginPage(),
        "/register": (context) => RegisterPage(),
        "/planform":(context) => PlanFormPage()
      },
    );
  }

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }
}
