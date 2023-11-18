import 'package:pokemon/features/pokemon/domain/entities/entities.dart';

class PokemonEntity {
  final int id;
  final String name;
  final String? cname;
  final String? jname;
  final String? image;
  final SkillsEntity? skills;

  PokemonEntity(
      {required this.id,
      required this.name,
      required this.cname,
      required this.jname,
      required this.image,
      required this.skills});
}
