import 'package:flutter/material.dart';
import 'package:your_wish_list/common/colors/app_colors.dart';

class FormFieldLabel extends StatelessWidget {

  final String label;
  final AppColors colors;

  const FormFieldLabel({super.key, required this.label, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: colors.titleFontColor,
        fontWeight: FontWeight.bold,
        fontSize: 18
      ),
    );
  }
}