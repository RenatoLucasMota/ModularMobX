// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$notifierCountAtom = Atom(name: '_AppControllerBase.notifierCount');

  @override
  int get notifierCount {
    _$notifierCountAtom.context.enforceReadPolicy(_$notifierCountAtom);
    _$notifierCountAtom.reportObserved();
    return super.notifierCount;
  }

  @override
  set notifierCount(int value) {
    _$notifierCountAtom.context.conditionallyRunInAction(() {
      super.notifierCount = value;
      _$notifierCountAtom.reportChanged();
    }, _$notifierCountAtom, name: '${_$notifierCountAtom.name}_set');
  }

  final _$sharedPreferencesAtom =
      Atom(name: '_AppControllerBase.sharedPreferences');

  @override
  SharedPreferences get sharedPreferences {
    _$sharedPreferencesAtom.context.enforceReadPolicy(_$sharedPreferencesAtom);
    _$sharedPreferencesAtom.reportObserved();
    return super.sharedPreferences;
  }

  @override
  set sharedPreferences(SharedPreferences value) {
    _$sharedPreferencesAtom.context.conditionallyRunInAction(() {
      super.sharedPreferences = value;
      _$sharedPreferencesAtom.reportChanged();
    }, _$sharedPreferencesAtom, name: '${_$sharedPreferencesAtom.name}_set');
  }

  final _$loadSharedPreferencesAsyncAction =
      AsyncAction('loadSharedPreferences');

  @override
  Future loadSharedPreferences() {
    return _$loadSharedPreferencesAsyncAction
        .run(() => super.loadSharedPreferences());
  }

  final _$_AppControllerBaseActionController =
      ActionController(name: '_AppControllerBase');

  @override
  dynamic incNotifiercount() {
    final _$actionInfo = _$_AppControllerBaseActionController.startAction();
    try {
      return super.incNotifiercount();
    } finally {
      _$_AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'notifierCount: ${notifierCount.toString()},sharedPreferences: ${sharedPreferences.toString()}';
    return '{$string}';
  }
}
