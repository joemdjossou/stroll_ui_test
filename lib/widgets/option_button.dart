import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroll_ui_test/controllers/option_button_controller.dart';
import 'package:stroll_ui_test/utils/constants/app_gaps.dart';
import 'package:stroll_ui_test/utils/theme/app_theme.dart';

class OptionButton extends StatelessWidget {
  final String letter;
  final String text;
  final int id;

  const OptionButton({
    super.key,
    required this.letter,
    required this.text,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OptionButtonController>(
      init: OptionButtonController(),
      builder: (controller) => GestureDetector(
        onTap: () => controller.onOptionSelected(optionId: id),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: AppTheme.cardColor,
            borderRadius: BorderRadius.circular(18),
            border: (controller.getOptionId == id)
                ? Border.all(color: AppTheme.primaryColor, width: 2)
                : Border.all(color: Colors.transparent),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Container(
                  width: 24,
                  decoration: BoxDecoration(
                    color: (controller.getOptionId == id)
                        ? AppTheme.primaryColor
                        : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: (controller.getOptionId == id)
                          ? Colors.transparent
                          : Colors.white54,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      letter,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: (controller.getOptionId == id)
                                ? Colors.white
                                : Colors.white54,
                          ),
                    ),
                  ),
                ),
                AppGaps.wGap7,
                Expanded(
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: (controller.getOptionId == id)
                              ? Colors.white
                              : Colors.white70,
                          fontSize: 14,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
