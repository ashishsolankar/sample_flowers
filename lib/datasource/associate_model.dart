import 'dart:collection';
import 'dart:convert';

import 'associate.dart';



class AssociateModel extends Associate {
  const AssociateModel({
    required int id,
    required String name,
    required String gender,
    required String department,
    required List<String> awards,
    required String picture,
    required int registered
  }) : super(
         id: id,
    name: name,
    gender: gender,
    department: department,
    awards: awards,
    picture: picture,
    registered: registered,
        );

  AssociateModel copyWith({
    required int id,
    required String name,
    required String gender,
    required String department,
    required List<String> awards,
    required String picture,
    required int registered
  }) {
    return AssociateModel(
      id: id ?? this.id,
      name: name ?? this.name,
      gender: gender ?? this.gender,
      department: department ?? this.department,
      awards: awards ?? this.awards,
      picture: picture ?? this.picture,
      registered: registered ?? this.registered
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'gender': gender,
      'department': department,
      'awards': awards,
      'picture': picture,
      'registered': registered,
    };
  }

  factory AssociateModel.fromMap(Map<String, dynamic> map) {
    return AssociateModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      gender: map['gender'] ?? '',
      awards: List<String>.from(map['awards']),
      department: map['department'] ?? '',
      picture: map['picture'] ?? '',
      registered: map['registered'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AssociateModel.fromJson(String source) => AssociateModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Flowers(id: $id, name: $name, gender: $gender, awards: $awards, department: $department, picture: $picture, registered: $registered)';
  }
}
