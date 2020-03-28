import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../app_controller.dart';

class Page extends StatelessWidget {
  final Color color;

  const Page({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Column(
          children: <Widget>[
            Observer(
              builder: (BuildContext context) {
                return Text(
                    Modular.get<AppController>().notifierCount.toString(),
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold));
              },
            ),
            Observer(
              builder: (BuildContext context) {
                return Text(
                    Modular.get<AppController>().notifierCount.toString(),
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold));
              },
            ),
            Observer(
              builder: (BuildContext context) {
                return Text(
                    Modular.get<AppController>().notifierCount.toString(),
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold));
              },
            ),
            RaisedButton(
              child: Text('Add Notifier'),
              onPressed: () {
                Modular.get<AppController>().incNotifiercount();
              },
            ),
          ],
        ),
      ),
    );
  }
}
