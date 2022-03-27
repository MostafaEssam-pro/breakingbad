// ignore_for_file: prefer_const_constructors

import 'package:breakingbad/data/models/Breakingbad_Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
   final CharactersDto character;
  const CharacterItem({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(8)),
      child: GridTile(
        child: Container(
          color: Colors.blueGrey,
          child: character.image.isNotEmpty
              ? FadeInImage.assetNetwork(
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: 'assets/images/loading.gif',
                  image: character.image.toString())
              : Image.asset('/assets/images/default.png'),
        ),
        footer: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          color: Colors.black12,
          alignment: Alignment.bottomCenter,
          child: Text(
            character.name,
            style: TextStyle(color: Colors.amber),
            overflow: TextOverflow.ellipsis,
            maxLines:3,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
