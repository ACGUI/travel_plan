import "package:flutter/material.dart";
import "package:travel_plan/model/city.dart";

class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190,
        width: 190,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(city.bgImg))),
        child: Center(
          child: Text(
            city.title,
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
