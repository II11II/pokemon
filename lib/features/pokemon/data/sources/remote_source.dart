import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokemon/features/pokemon/data/models/models.dart';
import 'package:pokemon/shared/exceptions/api_exception.dart';

class PokemonRemoteSource {
  final http.Client _client;
  final Uri _uri;

  PokemonRemoteSource({required http.Client client, required Uri uri})
      : _client = client,
        _uri = uri;

  Future<List<Pokemon>> getPokemons() async {
    final response = await _client.get(_uri);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return List.from(data)
          .map((e) => Pokemon.fromJson(e))
          .toList(growable: false);
    }
    Error.throwWithStackTrace(
        ApiException(
            message: 'Could not fetch getPokemons ',
            statusCode: response.statusCode),
        StackTrace.current);
  }
}
