import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_case_1.freezed.dart';
part 'test_case_1.g.dart';

/*
Existing Scenario 

1) 'name' field defaultvalue will only be considered while doing json noperation on the object
2) 'age' field will create JsonKey annotation with 1 param i.e @JsonKey(defaultValue: 18)
*/

@freezed
class Person with _$Person {
  factory Person({
    @JsonKey(name: 'firstName', defaultValue: 'Naruto') String? name,
    @Default(18) int? age,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
