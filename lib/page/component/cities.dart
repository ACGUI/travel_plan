import "package:flutter/material.dart";
import 'package:travel_plan/page/component/cityCard.dart';
import "package:travel_plan/model/city.dart";

class CitiesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CitiesScreen();
}

class _CitiesScreen extends State<CitiesScreen> {
  @override
  void initState() {
    // TODO: 获取city 列表
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    City city = City();
    city.bgImg = "https://iph.href.lu/879x800";
    city.title = "北京";
    return Scaffold(
        appBar: AppBar(
          title: Text("选择目的地"),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runSpacing: 10,
                children: <Widget>[
                  _buildCityAction(context, city),
                ],
              ),
            ),
          ],
        ));
  }

  Widget _buildCityAction(BuildContext context, City city) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context, city.title);
      },
      child: CityCard(city),
    );
  }
}
