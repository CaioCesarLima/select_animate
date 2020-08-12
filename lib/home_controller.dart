import 'package:mobx/mobx.dart';
import 'package:select_animation/option_model.dart';

// Include generated file
part 'home_controller.g.dart';

// This is the class used by rest of your codebase
class HomeController = HomeControllerBase with _$HomeController;

// The store-class
abstract class HomeControllerBase with Store {
  HomeControllerBase();

  @observable
  List<OptionModel> optionList = [
    OptionModel(id: 1, selected: false, optionName: 'Lorem'),
    OptionModel(id: 2, selected: false, optionName: 'Lorem'),
    OptionModel(id: 3, selected: false, optionName: 'Lorem'),
    OptionModel(id: 4, selected: false, optionName: 'Lorem'),
    OptionModel(id: 5, selected: false, optionName: 'Lorem'),
    OptionModel(id: 6, selected: false, optionName: 'Lorem'),
    OptionModel(id: 7, selected: false, optionName: 'Lorem'),
    OptionModel(id: 8, selected: false, optionName: 'Lorem'),
    OptionModel(id: 9, selected: false, optionName: 'Lorem'),
  ].asObservable();

  @computed
  List<OptionModel> get selectedOptions => optionList.where((element) => element.selected == true).toList();

  @observable
  bool done = false;
}