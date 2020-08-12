// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  Computed<List<OptionModel>> _$selectedOptionsComputed;

  @override
  List<OptionModel> get selectedOptions => (_$selectedOptionsComputed ??=
          Computed<List<OptionModel>>(() => super.selectedOptions,
              name: 'HomeControllerBase.selectedOptions'))
      .value;

  final _$optionListAtom = Atom(name: 'HomeControllerBase.optionList');

  @override
  List<OptionModel> get optionList {
    _$optionListAtom.reportRead();
    return super.optionList;
  }

  @override
  set optionList(List<OptionModel> value) {
    _$optionListAtom.reportWrite(value, super.optionList, () {
      super.optionList = value;
    });
  }

  final _$doneAtom = Atom(name: 'HomeControllerBase.done');

  @override
  bool get done {
    _$doneAtom.reportRead();
    return super.done;
  }

  @override
  set done(bool value) {
    _$doneAtom.reportWrite(value, super.done, () {
      super.done = value;
    });
  }

  @override
  String toString() {
    return '''
optionList: ${optionList},
done: ${done},
selectedOptions: ${selectedOptions}
    ''';
  }
}
