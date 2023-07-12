import 'package:flutter/material.dart';
import 'package:your_wish_list/common/colors/app_colors.dart';

class ExpenseButton extends StatelessWidget {

  final String title;
  final AppColors colors;

  const ExpenseButton({super.key, required this.colors, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(colors.titleFontColor),
          enableFeedback: true,
          overlayColor: MaterialStatePropertyAll<Color>(colors.backgroundColor),
        ),
        onPressed: () {
          print("object");
        },
        child: Text(
          title,
          style: TextStyle(
            color: colors.appbarColor,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}