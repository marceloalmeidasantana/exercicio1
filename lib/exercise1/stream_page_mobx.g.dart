// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_page_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FormController on _FormControllerBase, Store {
  late final _$isCheckedAtom =
      Atom(name: '_FormControllerBase.isChecked', context: context);

  @override
  bool get isChecked {
    _$isCheckedAtom.reportRead();
    return super.isChecked;
  }

  @override
  set isChecked(bool value) {
    _$isCheckedAtom.reportWrite(value, super.isChecked, () {
      super.isChecked = value;
    });
  }

  late final _$isMarkedAtom =
      Atom(name: '_FormControllerBase.isMarked', context: context);

  @override
  Option get isMarked {
    _$isMarkedAtom.reportRead();
    return super.isMarked;
  }

  @override
  set isMarked(Option value) {
    _$isMarkedAtom.reportWrite(value, super.isMarked, () {
      super.isMarked = value;
    });
  }

  late final _$_FormControllerBaseActionController =
      ActionController(name: '_FormControllerBase', context: context);

  @override
  void check(bool isChecked) {
    final _$actionInfo = _$_FormControllerBaseActionController.startAction(
        name: '_FormControllerBase.check');
    try {
      return super.check(isChecked);
    } finally {
      _$_FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkMarked(Option isMarked) {
    final _$actionInfo = _$_FormControllerBaseActionController.startAction(
        name: '_FormControllerBase.checkMarked');
    try {
      return super.checkMarked(isMarked);
    } finally {
      _$_FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isChecked: ${isChecked},
isMarked: ${isMarked}
    ''';
  }
}
