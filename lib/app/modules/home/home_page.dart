import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_controller/app/repositories/shared_repository.dart';
import 'package:mobx_controller/app/widgets/notifier_count.dart';
import 'package:mobx_controller/app/widgets/page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await Modular.get<SharedRepository>()
                  .setUsuarioLogado(false); // Metodo de login
              Modular.to.pushReplacementNamed('/start');
            },
          ),
          NotifierCount(),
        ],
      ),
      body: PageView(
        children: <Widget>[
          Page(
            color: Colors.red,
          ),
          Page(
            color: Colors.blue,
          ),
          Page(
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
