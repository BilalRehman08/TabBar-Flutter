import 'package:class9/signup.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.red,
                  indicatorColor: Colors.red,
                  tabs: <Widget>[
                    Tab(
                        child: Text('Login',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Tab(
                        child: Text('Register',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ]),
            ),
            body: TabBarView(children: <Widget>[
              Login(),
              Sin(),
            ]),
          )),
    );
  }
}
