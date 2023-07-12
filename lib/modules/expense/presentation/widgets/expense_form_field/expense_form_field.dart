import 'package:flutter/material.dart';
import 'package:your_wish_list/common/colors/app_colors.dart';
import 'package:your_wish_list/modules/expense/presentation/widgets/expense_form_field/form_field_label.dart';

import 'custom_form_field.dart';

class ExpenseFormField extends StatelessWidget {

  final String label;
  final String hint;
  final AppColors colors;

  const ExpenseFormField({
    super.key, 
    required this.colors, 
    required this.label, 
    required this.hint
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      height: 72,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormFieldLabel(label: label, colors: colors),
          const SizedBox(height: 5),
          CustomFormField(colors: colors, hint: hint)
        ],
      ),
    );
  }
}
