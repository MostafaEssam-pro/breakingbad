// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:breakingbad/business_logic/cubit/character_cubit.dart';
import 'package:breakingbad/data/models/Breakingbad_Model.dart';
import 'package:breakingbad/presentation/Widget/character_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  late List<CharactersDto> allCharacter;
  late List<CharactersDto> searchCharacters;
  final bool _isSearch = false;
  final _textSearchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharacterCubit>(context).GetCharacters();
  }

  Widget _buildSearchFiled() {
    return TextField(
      controller: _textSearchController,
      cursorColor: Colors.blueAccent,
      decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.blueAccent,
          )),
      style: TextStyle(color: Colors.yellow, fontSize: 20),
      onChanged: (searchCharacter) {
        addSearchForItemToCharacterList(searchCharacter);
      },
    );
  }

  void addSearchForItemToCharacterList(String searchCharacter) {
    searchCharacters = allCharacter
        .where((Character) =>
            Character.name.toLowerCase().startsWith(searchCharacter))
        .toList();
    setState(() {});
  }

  List<Widget> _buildAppBarAction() {
    if (_isSearch) {
      return [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.clear,
              color: Colors.black,
            ))
      ];
    } else {
      return [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
        )
      ];
    }
  }

  void _stratSearch(){

  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
      if (state is CharactersLoaded) {
        allCharacter = (state).characters;
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

  Widget buildLoadListWidget() {
    return SingleChildScrollView(
      child: Container(
        //color: Colors.grey,
        child: Column(
          children: [
            buildCharacterLIst(),
          ],
        ),
      ),
    );
  }

  Widget buildCharacterLIst() {
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
      itemBuilder: (ctx, index) {
        return CharacterItem(character: allCharacter[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.greenAccent,
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
