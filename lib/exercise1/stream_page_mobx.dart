import 'package:mobx/mobx.dart';
import 'exerciseMobx.dart';
part 'stream_page_mobx.g.dart';

class FormController = _FormControllerBase with _$FormController;

abstract class _FormControllerBase with Store{

  @observable
  bool isChecked = false;

  @action
  void check(bool isChecked){
    this.isChecked = isChecked;
  }

  @observable
  Option isMarked = Option.masculino;


  @action
  void checkMarked(Option isMarked){
    this.isMarked = isMarked;
  }
}
