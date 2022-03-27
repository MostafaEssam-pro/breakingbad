// ignore_for_file: unused_field, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:breakingbad/data/models/Breakingbad_Model.dart';
import 'package:breakingbad/data/repository/character_repository.dart';
import 'package:meta/meta.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterRepository _characterRepository;
  CharacterCubit(this._characterRepository) : super(CharacterInitial());

   List<CharactersDto> Characters=[];



  List<CharactersDto> GetCharacters() {
    _characterRepository.GetCharacterList().then((characters) {
      emit(CharactersLoaded(characters));
      Characters = characters;
      print('555');
    });
    return Characters;
  }
}
