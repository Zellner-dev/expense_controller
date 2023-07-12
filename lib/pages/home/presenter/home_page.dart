import 'package:flutter/material.dart';
import 'package:your_wish_list/common/colors/app_colors.dart';

import 'package:your_wish_list/common/components/app_scaffold/app_scaffold.dart';
import 'package:your_wish_list/modules/expense/presentation/widgets/expense_form/expense_form.dart';

class HomePage extends StatelessWidget {
  
  final AppColors colors;

  const HomePage({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      colors: colors,
      actions: [
        IconButton(
          onPressed: () => showDialog(
            context: context, 
            builder: (context) => ExpenseForm(colors: colors),
          ), 
          icon: const Icon(Icons.add)
        ),
      ],
      body: Center(child: Text("Hello World"),),
    );
  }
}