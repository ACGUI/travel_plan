import "package:flutter/material.dart";
import "package:travel_plan/page/style/text.dart";

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  String username;
  String password;
  String password2;
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
                    TextField(
                      decoration: InputDecoration(labelText: "确认密码"),
                      onChanged: (val) {
                        password = val;
                      },
                    ),
                    Text(password2!=null && password!=password2?"两次密码不一致":""),
                    SizedBox(height: 50),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            shape: StadiumBorder(),
                            child: Text(
                              "注册",
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
                        "已有账号? 去登陆",
                        style: TextStyle(color: Colors.green),
                      ),
                      onTap: () {
                        Navigator.popAndPushNamed(context, "/login");
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
