import 'package:pokemon/features/pokemon/data/models/models.dart';
import 'package:pokemon/features/pokemon/domain/entities/entities.dart';

class Pokemon extends PokemonEntity {
  Pokemon(
      {required super.id,
      required super.name,
      super.cname,
      super.jname,
      super.image,
      super.skills});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      name: json['name'],
      cname: json['cname'],
      jname: json['jname'],
      image: json['image'],
      skills: json['skills'] != null ? Skills.fromJson(json['skills']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['cname'] = cname;
    data['jname'] = jname;
    data['image'] = image;
    if (skills != null) {
      data['skills'] = (skills as Skills).toJson();
    }
    return data;
  }
}
