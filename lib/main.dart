import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_controller/app/app_module.dart';

void main() => runApp(
  ModularApp(
    module: AppModule(),
  )
);