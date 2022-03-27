part of 'character_cubit.dart';

@immutable
abstract class CharacterState {}

class CharacterInitial extends CharacterState {}



class CharactersLoaded extends CharacterState {
  final List<CharactersDto> characters;

  CharactersLoaded(this.characters);
}

class CharacterError extends CharacterState {}

