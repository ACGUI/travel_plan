import "package:flutter/material.dart";
import "package:travel_plan/page/style/text.dart";

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              "欢迎来到行程助手",
              style: CustomTextStyle.title,
            ),
          ),
          Divider(
            color: Colors.grey[400],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: "用户名"),
                  onChanged: (val) {
                    username = val;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: "密码"),
                  onChanged: (val) {
                    password = val;
                  },
                ),
                Align(
                  child: IconButton(
                    icon: Text(
                      "忘记密码?",
                      style: TextStyle(color: Colors.green),
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.all(0),
                    iconSize: 80,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 50),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        shape: StadiumBorder(),
                        child: Text(
                          "登陆",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/");
                        },
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  child: Text(
                    "还没账号? 点击注册",
                    style: TextStyle(color: Colors.green),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/register");
                  },
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
