import "package:flutter/material.dart";
import "package:travel_plan/model/plan.dart";
class PlanCard extends StatelessWidget{
  Plan _plan;
  PlanCard(this._plan);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,

        child: FittedBox(child: Image.network("https://iph.href.lu/879x800"),),
      ),
    );
  }
}