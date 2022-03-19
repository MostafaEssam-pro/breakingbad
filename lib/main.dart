import 'package:breakingbad/presentation/screen/character_screen.dart';
import 'package:flutter/material.dart';

import 'core/constant/app_router.dart';

void main() {
  runApp( AppRootraBark(appRoute:AppRoute()));
}

class AppRootraBark extends StatelessWidget {
  const AppRootraBark({Key? key,  required this.appRoute}) : super(key: key);

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



