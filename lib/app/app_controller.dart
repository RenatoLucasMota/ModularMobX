import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_controller/app/repositories/shared_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  int notifierCount = 0;

  @observable
  SharedPreferences sharedPreferences;

  @action
  loadSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
    Modular.get<SharedRepository>().setSharedPreferences(sharedPreferences);
    await Future.delayed(Duration(seconds: 1));
  } 

  @action 
  incNotifiercount(){
    notifierCount = notifierCount + 1; 
  }
}