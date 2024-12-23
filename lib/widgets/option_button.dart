import 'package:flutter/material.dart';
import 'package:stroll_ui_test/utils/constants/app_gaps.dart';
import 'package:stroll_ui_test/utils/theme/app_theme.dart';

class OptionButton extends StatefulWidget {
  final String letter;
  final String text;

  const OptionButton({
    super.key,
    required this.letter,
    required this.text,
  });

  @override
  State<OptionButton> createState() => _OptionButtonState();
}

class _OptionButtonState extends State<OptionButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isSelected = !isSelected;
      }),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: AppTheme.cardColor,
          borderRadius: BorderRadius.circular(18),
          border: isSelected
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
                  color:
                      isSelected ? AppTheme.primaryColor : Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? Colors.transparent : Colors.white54,
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.letter,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: isSelected ? Colors.white : Colors.white54,
                        ),
                  ),
                ),
              ),
              AppGaps.wGap7,
              Expanded(
                child: Text(
                  widget.text,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: isSelected ? Colors.white : Colors.white70,
                        fontSize: 14,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
