import "package:flutter/material.dart";
import "package:date_range_picker/date_range_picker.dart" as DateRagePicker;
import "package:travel_plan/page/component/cities.dart";

class PlanFormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlanFormPage();
}

class _PlanFormPage extends State<PlanFormPage> {
  String startDate;
  String endDate;
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
        appBar: AppBar(
          title: Text("添加计划"),
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

  _buildCountry() {
    return OutlineButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CitiesScreen()));
      },
      child: _BigBtn(text: "选择目的地"),
    );
  }

  _buildDateRange() {
    return OutlineButton(
      onPressed: () async {
        List<DateTime> dateRange = await DateRagePicker.showDatePicker(
          context: context,
          initialFirstDate: new DateTime.now(),
          initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
          firstDate: new DateTime(2015),
          lastDate: new DateTime(2020),
        );
        this.startDate = dateRange[0].toString().substring(0, 10);
        this.endDate = dateRange[1].toString().substring(0, 10);
        setState(() {});
      },
      child: _BigBtn(
        text: (startDate == null || endDate == null)
            ? "选择时间"
            : "出发时间" + "        " + startDate + "返回时间 " + "       " + endDate,
      ),
    );
  }
}
