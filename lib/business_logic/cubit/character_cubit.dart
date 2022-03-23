// ignore_for_file: unused_field, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:breakingbad/data/models/Breakingbad_Model.dart';
import 'package:breakingbad/data/repository/character_repository.dart';
import 'package:meta/meta.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit(this._characterRepository) : super(CharacterInitial());

  late List<CharactersDto> Characters;

  final CharacterRepository _characterRepository;

  List<CharactersDto> GetCharacters() {
    _characterRepository.GetCharacterList().then((characters) {
      emit(CharacterLoad(characters, charactersDto: []));
      Characters = characters;
    });
    return Characters;
  }
}
