import 'package:flutter/material.dart';
import 'package:your_wish_list/common/colors/app_colors_impl.dart';
import 'package:your_wish_list/common/components/material_or_cupertino/material_or_cupertino.dart';
import 'package:your_wish_list/pages/home/presenter/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialOrCupertino(home: HomePage(colors: AppColorsImpl(),));
  }
}