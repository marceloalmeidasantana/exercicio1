import 'package:mobx/mobx.dart';

part 'login_exercise_Mobx.g.dart';

class LoginExerciseMobx = _LoginExerciseMobx with _$LoginExerciseMobx;

abstract class _LoginExerciseMobx with Store {
  @observable
  String? name;

  @action
  void setName(String value) => name = value;

  @observable
  String? email;

  @action
  void setEmail(String value) => email = value;

  @observable
  String? password;

  @action
  void setPassword(String value) => password = value;

  @observable
  bool passwordVisible = true;

  @action
  void changePassword() {
    passwordVisible = !passwordVisible;
  }

  @computed
  bool get isNameValid {
    return name == null || name != null && name!.length >= 6;
  }

  @computed
  bool get isEmailValid {
    return email == null ||
        name != null &&
            RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(email!);
  }

  @computed
  bool get isPasswordValid {
    return password == null || name != null && password!.length >= 6;
  }

  @computed
  bool get formValid {
    return isNameValid &&
        isEmailValid &&
        isPasswordValid &&
        name != null &&
        email != null &&
        password != null;
  }
}
