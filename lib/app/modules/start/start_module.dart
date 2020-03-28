import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_controller/app/modules/start/start_controller.dart';
import 'package:mobx_controller/app/modules/start/start_page.dart';

class StartModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => StartController()),
  ];

  @override
  List<Router> get routers => [
    Router("/", child: (_, args) => StartPage()),
  ];

  static Inject get to => Inject<StartModule>.of();

}