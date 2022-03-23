import 'package:breakingbad/business_logic/cubit/character_cubit.dart';
import 'package:breakingbad/core/constant/constant.dart';
import 'package:breakingbad/data/repository/character_repository.dart';
import 'package:breakingbad/data/web_services/service/character_service.dart';
import 'package:breakingbad/presentation/screen/character_details_screen.dart';
import 'package:breakingbad/presentation/screen/character_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoute {
  late CharacterRepository characterRepository;
  late CharacterCubit characterCubit;

  AppRoute() {
    characterRepository = CharacterRepository(CharacterService());
    characterCubit = CharacterCubit(characterRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>
                CharacterCubit(characterRepository),
            child:  CharacterScreen(),
          ),
        );
      case characterDetailsScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
