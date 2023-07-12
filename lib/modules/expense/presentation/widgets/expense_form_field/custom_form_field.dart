
import 'package:flutter/material.dart';
import 'package:your_wish_list/common/colors/app_colors.dart';

class CustomFormField extends StatelessWidget {

  final String hint;
  final AppColors colors;

  const CustomFormField({super.key, required this.colors, required this.hint});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        style: TextStyle(fontSize: 18, color: colors.titleFontColor),
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: colors.backgroundColor,
          alignLabelWithHint: true,
          contentPadding: const EdgeInsets.fromLTRB(10, 11, 10, 12),
          hintStyle: TextStyle(fontSize: 18, color: colors.subtitleFontColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),  
            borderSide: BorderSide.none,
          )
        ),
      ),
    );
  }
}