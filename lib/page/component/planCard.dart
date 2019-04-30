import "package:flutter/material.dart";
import "package:travel_plan/model/plan.dart";

class PlanCard extends StatelessWidget {
  final Plan _plan;

  PlanCard(this._plan);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Container(
            height: 200,
            width: 1000,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(_plan.bgImg))),
            child: Align(
              child: _Cover(child: _Title()),
              alignment: Alignment.bottomCenter,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget _Cover({Widget child}) {
    return Container(
      width: 1000,
      height: 75,
      color: Color.fromRGBO(0, 0, 0, 0.5),
      padding: EdgeInsets.all(10),
      child: child,
    );
  }

  Widget _Title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          _plan.startDate + " 出发",
          style: TextStyle(color: Colors.white),
        ),
        Text(_plan.city, style: TextStyle(fontSize: 20, color: Colors.white)),
      ],
    );
  }
}
