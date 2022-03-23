// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:breakingbad/business_logic/cubit/character_cubit.dart';
import 'package:breakingbad/data/models/Breakingbad_Model.dart';
import 'package:breakingbad/presentation/Widget/character_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  late List<CharactersDto> allCharacter;

  @override
  void initState() {
    super.initState();
    allCharacter = BlocProvider.of<CharacterCubit>(context).GetCharacters();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
      if (state is CharacterLoad) {
        allCharacter = state.charactersDto;
        return buildLoadListWidget();
      } else {
        return ShowLoadingInductor();
      }
    });
  }

  ShowLoadingInductor() {
    return Center(
        child: CircularProgressIndicator(
      backgroundColor: Colors.yellow,
    ));
  }

  buildLoadListWidget() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            buildCharacterLIst(),
          ],
        ),
      ),
    );
  }

  buildCharacterLIst() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1),
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: allCharacter.length,
            padding: EdgeInsets.zero,
        itemBuilder: (ctx, context) {
          return CharacterItem();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        //backgroundColor: Colors.red,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'sss ',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: buildBlocWidget(),
    );
  }
}
