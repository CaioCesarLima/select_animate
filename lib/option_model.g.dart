// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OptionModel on OptionModelBase, Store {
  final _$idAtom = Atom(name: 'OptionModelBase.id');

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$optionNameAtom = Atom(name: 'OptionModelBase.optionName');

  @override
  String get optionName {
    _$optionNameAtom.reportRead();
    return super.optionName;
  }

  @override
  set optionName(String value) {
    _$optionNameAtom.reportWrite(value, super.optionName, () {
      super.optionName = value;
    });
  }

  final _$selectedAtom = Atom(name: 'OptionModelBase.selected');

  @override
  bool get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(bool value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  final _$OptionModelBaseActionController =
      ActionController(name: 'OptionModelBase');

  @override
  void selectOption() {
    final _$actionInfo = _$OptionModelBaseActionController.startAction(
        name: 'OptionModelBase.selectOption');
    try {
      return super.selectOption();
    } finally {
      _$OptionModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
optionName: ${optionName},
selected: ${selected}
    ''';
  }
}
