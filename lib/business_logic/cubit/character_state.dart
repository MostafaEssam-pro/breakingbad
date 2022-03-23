part of 'character_cubit.dart';

@immutable
abstract class CharacterState {}

class CharacterInitial extends CharacterState {}

class CharacterLoad extends CharacterState {
  final List<CharactersDto> charactersDto;
  CharacterLoad(List<CharactersDto> characters, {
    required this.charactersDto,
  });
}

class CharacterError extends CharacterState {}

