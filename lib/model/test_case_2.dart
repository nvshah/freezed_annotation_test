import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_case_2.freezed.dart';
part 'test_case_2.g.dart';

/*
@Default() should override the defaultValue or custom @JsonKey annotations

1) For 'name' field : JsonKey will respect @DefaultValue annotation & add key:value pair for same
2) For 'age' field : As JsonKey possess its own defaultValue param so it will not lookup for @DefaultValue annotation
*/

@freezed
class Person with _$Person {
  factory Person({
    @JsonKey(name: 'firstName')
    @Default('Naruto')
        String? name,
    @JsonKey(
      name: 'oldBy',
      defaultValue: 25,
    )
    @Default(18)
        int? age,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
