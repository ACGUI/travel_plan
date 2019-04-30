import "package:flutter/material.dart";
import "package:date_range_picker/date_range_picker.dart" as DateRagePicker;
import "package:travel_plan/page/component/cities.dart";
import "package:travel_plan/model/plan.dart";

class PlanFormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlanFormPage();
}

class _PlanFormPage extends State<PlanFormPage> {
  Plan plan = Plan();
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
        appBar: AppBar(
          title: Text("添加计划"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
//                TODO:保存plan logic
              Navigator.pop(context);
              },
            )
          ],
        ),
        body: Column(
          children: <Widget>[_buildDateRange(), _buildCountry()],
        ));
  }

  Widget _BigBtn({String text}) {
    return Container(
        height: 150,
        width: 1000,
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Colors.green, fontSize: 30),
        )));
  }

  Widget _buildCountry() {
    return OutlineButton(
      onPressed: () async {
        plan.city = await Navigator.push(
            context, MaterialPageRoute(builder: (context) => CitiesScreen()));
        setState(() {});
      },
      child: _BigBtn(text: plan.city == null ? "选择目的地" : "目的地：" + plan.city),
    );
  }

  Widget _buildDateRange() {
    return OutlineButton(
      onPressed: () async {
        List<DateTime> dateRange = await DateRagePicker.showDatePicker(
          context: context,
          initialFirstDate: new DateTime.now(),
          initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
          firstDate: new DateTime(2015),
          lastDate: new DateTime(2020),
        );
        plan.startDate = dateRange[0].toString().substring(0, 10);
        plan.endDate = dateRange[1].toString().substring(0, 10);
        setState(() {});
      },
      child: _BigBtn(
        text: (plan.startDate == null || plan.endDate == null)
            ? "选择时间"
            : "出发时间" +
                "        " +
                plan.startDate +
                "返回时间 " +
                "       " +
                plan.endDate,
      ),
    );
  }
}
