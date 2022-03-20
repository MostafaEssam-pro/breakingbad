
import 'package:flutter/material.dart';
class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar:AppBar(
        //backgroundColor: Colors.red,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Ahmed ss',style: TextStyle(color: Colors.black),),
        centerTitle: true,

      ),
    );
  }
  
}