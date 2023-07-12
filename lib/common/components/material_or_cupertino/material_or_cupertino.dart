import 'package:flutter/material.dart';

class MaterialOrCupertino extends StatelessWidget {

  final Widget home;
  const MaterialOrCupertino({super.key, required this.home});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Montserrat",
      ),
      home: home
      )
    ;
  }
}