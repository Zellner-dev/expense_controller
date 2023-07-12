import 'package:flutter/cupertino.dart';
import 'package:your_wish_list/common/colors/app_colors.dart';

import '../expense_form_field/form_field_label.dart';

class ExpenseSwitch extends StatefulWidget {

  final AppColors colors;

  const ExpenseSwitch({super.key, required this.colors});

  @override
  State<ExpenseSwitch> createState() => _ExpenseSwitchState();
}

class _ExpenseSwitchState extends State<ExpenseSwitch> {

  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormFieldLabel(label: "Is monthly", colors: widget.colors),
        const SizedBox(height: 5),
        Container(
          height: 45,
          alignment: Alignment.centerLeft,
          child: Transform.scale(
            alignment: Alignment.center,
            scale: 1.25,
            child: CupertinoSwitch(
              thumbColor: widget.colors.titleFontColor,
              activeColor: widget.colors.detailColor,
              trackColor: widget.colors.backgroundColor,
            value: switchValue,
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            },
                                  ),
          ),
        ),
      ],
    );
  }
}