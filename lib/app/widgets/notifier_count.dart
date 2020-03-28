import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../app_controller.dart';

class NotifierCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            Positioned(
              right: 8,
              child: Container(
                child: Center(
                  child: Observer(
                    builder: (BuildContext context) {
                      return Text(Modular.get<AppController>().notifierCount.toString(),
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold));
                    },
                  ),
                ),
                height: 16,
                width: 16,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              ),
            )
          ],
        ),
      ),
    );
  }
}
