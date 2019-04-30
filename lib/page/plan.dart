import "package:flutter/material.dart";
import "package:travel_plan/page/component/plan_card.dart";
import "package:travel_plan/model/plan.dart";

class PlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Plan plan = Plan();
    plan.createBy = "lings";
    plan.createTime = "2018-02-02 20:20:00";
    plan.delFlag = 0;
    plan.title = "北京";
    plan.bgImg = "https://iph.href.lu/879x800";
    return Scaffold(
      appBar: AppBar(
        title: Text("行程助手"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        children: <Widget>[
          PlanCard(plan),
          PlanCard(plan),
          PlanCard(plan),
          PlanCard(plan),
          PlanCard(plan),
        ],
      ),
    );
  }
}
