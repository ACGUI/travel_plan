import "package:flutter/material.dart";

class CitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("选择目的地"),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              "完成",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
//      body: ,
    );
  }
}
