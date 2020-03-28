import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_controller/app/modules/start/start_controller.dart';
import 'package:mobx_controller/app/repositories/shared_repository.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
        child: RaisedButton(
          child: Text('Logar'),
          onPressed: () async {
            await Modular.get<SharedRepository>().setUsuarioLogado(true); // Metodo de login
            Modular.to.pushReplacementNamed('/home');   
          },
        ),
      ),
    );
  }
}
