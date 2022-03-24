import 'package:breakingbad/presentation/screen/character_screen.dart';
import 'package:flutter/material.dart';

import 'app_router.dart';
import 'data/web_services/dio/dio_helper.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
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
      //home: const CharacterScreen(),
    );
  }
}



