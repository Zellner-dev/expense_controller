import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_wish_list/common/colors/app_colors.dart';
import 'package:your_wish_list/modules/expense/presentation/widgets/expense_form_field/custom_form_field.dart';
import 'package:your_wish_list/modules/expense/presentation/widgets/expense_button/expense_button.dart';
import 'package:your_wish_list/modules/expense/presentation/widgets/expense_form_field/expense_form_field.dart';
import 'package:your_wish_list/modules/expense/presentation/widgets/expense_form_field/form_field_label.dart';
import 'package:your_wish_list/modules/expense/presentation/widgets/expense_switch/expense_switch.dart';

class ExpenseForm extends StatefulWidget {

  final AppColors colors;
  const ExpenseForm({super.key, required this.colors});

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: widget.colors.cardColor,
      insetPadding: const EdgeInsets.only(left: 10, right: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 435,
          child: Column(
            children: [
              ExpenseFormField(
                colors: widget.colors, 
                label: "Expense Name",
                hint: "Home Expense",
              ),
              const SizedBox(height: 5),
              ExpenseFormField(
                colors: widget.colors, 
                label: "Expense Price",
                hint: r"R$50,00",
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 72,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 50)/100*65,
                      child: ExpenseFormField(
                        label: "Portion Amount",
                        colors: widget.colors, 
                        hint: "10"
                      )
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 72,
                      width: (MediaQuery.of(context).size.width - 50)/100*35,
                      child: ExpenseSwitch(colors: widget.colors)
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              ExpenseFormField(
                colors: widget.colors, 
                label: "Expense Price",
                hint: r"R$50,00",
              ),
              const SizedBox(height: 5),
              ExpenseFormField(
                colors: widget.colors, 
                label: "Expense Price",
                hint: r"R$50,00",
              ),
              const SizedBox(height: 10),
              ExpenseButton(colors: widget.colors, title: "CONFIRMAR")
            ],
          ),
        ),
      ),
    );
  }
}