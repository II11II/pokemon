import 'package:pokemon/features/pokemon/domain/entities/entities.dart';

class Skills extends SkillsEntity {
  Skills(
      {required super.egg,
      required super.levelUp,
      required super.tm,
      required super.transfer,
      required super.tutor});

  factory Skills.fromJson(Map<String, dynamic> json) {
    return Skills(
        egg: json['egg'].cast<int>(),
        levelUp: json['level_up'].cast<int>(),
        tm: json['tm'].cast<int>(),
        transfer: json['transfer'].cast<int>(),
        tutor: json['tutor'].cast<int>());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['egg'] = egg;
    data['level_up'] = levelUp;
    data['tm'] = tm;
    data['transfer'] = transfer;
    data['tutor'] = tutor;
    return data;
  }
}
