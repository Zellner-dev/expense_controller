import 'dart:ui';

import 'package:your_wish_list/common/colors/app_colors.dart';

class AppColorsImpl implements AppColors {

  @override
  Color get appbarColor => const Color(0XFF000000);

  @override
  Color get cardColor => const Color(0XFF323232);

  @override
  Color get backgroundColor => const Color(0XFF1C1C1C);

  @override
  Color get subtitleFontColor => const Color(0XFFFFFFFF).withOpacity(0.5);

  @override
  Color get titleFontColor => const Color(0XFFFFFFFF);

  @override
  Color get detailColor =>const  Color(0XFF429984);

}