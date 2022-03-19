// ignore_for_file: prefer_const_constructors
import 'package:breakingbad/core/constant/app_router.dart';
import 'package:breakingbad/presentation/screen/character_screen.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key,  required this.appRoute}) : super(key: key);

 final AppRoute appRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoute.generateRoute,
      home: CharacterScreen(),
    );
  }
}
