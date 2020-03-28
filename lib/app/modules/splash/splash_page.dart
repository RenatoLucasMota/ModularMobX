import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_controller/app/repositories/shared_repository.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  ReactionDisposer disposerAuth;
  ReactionDisposer disposerShared;

  @override
  void initState() {
    super.initState();

    disposerShared = autorun((_) {
      final shared = Modular.get<SharedRepository>();
      if (shared != null) {
        disposerAuth = autorun((_) async {
          await Future.delayed(Duration(seconds: 2));
          if (shared.getUsuarioLogado()) {
            await Modular.to.pushReplacementNamed('/home');
          } else {
            await Modular.to.pushReplacementNamed('/start');
          }
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    disposerShared.call();
    disposerAuth.call();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'SPLASH',
          style: TextStyle(fontSize: 68, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
