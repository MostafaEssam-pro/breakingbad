import 'package:breakingbad/core/constant/constant.dart';
import 'package:breakingbad/presentation/screen/character_details_screen.dart';
import 'package:breakingbad/presentation/screen/character_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(builder: (_) => CharacterScreen());
      case characterDetailsScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
