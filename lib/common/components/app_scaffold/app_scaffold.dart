import 'package:flutter/material.dart';
import 'package:your_wish_list/common/colors/app_colors.dart';

class AppScaffold extends StatelessWidget {

  final AppColors colors;
  final List<Widget>? actions;
  final Widget? body;

  const AppScaffold({
    super.key, 
    required this.colors, 
    this.body,
    this.actions, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.appbarColor,
        actions: actions,
      ),
      backgroundColor: colors.backgroundColor,
      body: body,
    );
  }
} 