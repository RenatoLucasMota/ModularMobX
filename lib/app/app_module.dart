import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_controller/app/app_controller.dart';
import 'package:mobx_controller/app/app_widget.dart';
import 'package:mobx_controller/app/modules/home/home_page.dart';
import 'package:mobx_controller/app/modules/splash/splash_page.dart';
import 'package:mobx_controller/app/modules/start/start_module.dart';
import 'package:mobx_controller/app/repositories/shared_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => SharedRepository()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
        Router('/start', module: StartModule()),
        Router('/home', child: (_, args) => HomePage()),
      ];
}
