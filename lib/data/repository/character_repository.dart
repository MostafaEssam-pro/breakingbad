// ignore_for_file: avoid_print

import 'package:breakingbad/data/models/Breakingbad_Model.dart';
import 'package:breakingbad/data/web_services/service/character_service.dart';

class CharacterRepository {
  final CharacterService _characterService;

  CharacterRepository(this._characterService);
// ignore: non_constant_identifier_names
  Future<List<dynamic>> GetCharacterList() async {
    // ignore: non_constant_identifier_names
    final Characters = await _characterService.GetCharacterList();

    return Characters.map((character) => Breakingbad.fromJson(character))
        .toList();
  }
}
