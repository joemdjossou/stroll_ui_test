import 'package:get/get.dart';
import 'package:stroll_ui_test/models/options_model.dart';

class OptionButtonController extends GetxController {
  final List<OptionsModelClass> optionList = [
    OptionsModelClass(
      id: 1,
      optionLetter: 'A',
      text: 'The peace in the early mornings',
    ),
    OptionsModelClass(
      id: 2,
      optionLetter: 'B',
      text: 'The magical golden hours',
    ),
    OptionsModelClass(
      id: 3,
      optionLetter: 'C',
      text: 'Wind down time after dinners',
    ),
    OptionsModelClass(
      id: 4,
      optionLetter: 'D',
      text: 'The serenity past midnight',
    ),
  ];

  int _optionId = 0;

  int get getOptionId => _optionId;

  void onOptionSelected({required int optionId}) {
    _optionId = optionId;
    update();
  }

  @override
  void onInit() {
    _optionId = 0;
    super.onInit();
  }
}
