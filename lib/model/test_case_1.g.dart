// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_case_1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$_$_PersonFromJson(Map<String, dynamic> json) {
  return _$_Person(
    name: json['firstName'] as String? ?? 'Naruto',
    age: json['age'] as int? ?? 18,
  );
}

Map<String, dynamic> _$_$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'firstName': instance.name,
      'age': instance.age,
    };
