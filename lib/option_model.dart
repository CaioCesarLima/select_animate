import 'package:mobx/mobx.dart';

// Include generated file
part 'option_model.g.dart';

// This is the class used by rest of your codebase
class OptionModel = OptionModelBase with _$OptionModel;

// The store-class
abstract class OptionModelBase with Store {
  OptionModelBase({this.id, this.optionName, this.selected});

  @observable
  int id;

  @observable
  String optionName;

  @observable
  bool selected;

  @action
  void selectOption(){
    this.selected = !this.selected;
  }
}
//class OptionModel {
  
  
  
  
  
  //OptionModel({
    //this.id,
    //this.optionName,
    //this.selected,
  //});
  
  
//}
