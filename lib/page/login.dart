import "package:flutter/material.dart";
import "package:travel_plan/page/style/text.dart";
class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LoginPage();

}

class _LoginPage extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("欢迎",style: CustomTextStyle.title,),
        ],
      ),
    );
  }

}