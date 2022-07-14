// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_exercise_Mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginExerciseMobx on _LoginExerciseMobx, Store {
  Computed<bool>? _$isNameValidComputed;

  @override
  bool get isNameValid =>
      (_$isNameValidComputed ??= Computed<bool>(() => super.isNameValid,
              name: '_LoginExerciseMobx.isNameValid'))
          .value;
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_LoginExerciseMobx.isEmailValid'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_LoginExerciseMobx.isPasswordValid'))
          .value;
  Computed<bool>? _$formValidComputed;

  @override
  bool get formValid =>
      (_$formValidComputed ??= Computed<bool>(() => super.formValid,
              name: '_LoginExerciseMobx.formValid'))
          .value;

  late final _$nameAtom =
      Atom(name: '_LoginExerciseMobx.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_LoginExerciseMobx.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LoginExerciseMobx.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$passwordVisibleAtom =
      Atom(name: '_LoginExerciseMobx.passwordVisible', context: context);

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  late final _$_LoginExerciseMobxActionController =
      ActionController(name: '_LoginExerciseMobx', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_LoginExerciseMobxActionController.startAction(
        name: '_LoginExerciseMobx.setName');
    try {
      return super.setName(value);
    } finally {
      _$_LoginExerciseMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_LoginExerciseMobxActionController.startAction(
        name: '_LoginExerciseMobx.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginExerciseMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginExerciseMobxActionController.startAction(
        name: '_LoginExerciseMobx.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginExerciseMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword() {
    final _$actionInfo = _$_LoginExerciseMobxActionController.startAction(
        name: '_LoginExerciseMobx.changePassword');
    try {
      return super.changePassword();
    } finally {
      _$_LoginExerciseMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
password: ${password},
passwordVisible: ${passwordVisible},
isNameValid: ${isNameValid},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid},
formValid: ${formValid}
    ''';
  }
}
