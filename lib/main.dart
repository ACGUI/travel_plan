import 'package:flutter/material.dart';
import "package:travel_plan/page/counter.dart";
import "package:travel_plan/bloc/counter.dart";
import "package:travel_plan/model/plan.dart";
import "package:travel_plan/page/component/plan_card.dart";
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final CounterBloc _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    Plan plan = Plan();
    plan.createBy = "lings";
    plan.createTime = "2018-02-02 20:20:00";
    plan.delFlag = 0;
    plan.title = "北京";

    return MaterialApp(
      title: '行程助手',
      home:PlanCard(plan)
    );
  }

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }
}
