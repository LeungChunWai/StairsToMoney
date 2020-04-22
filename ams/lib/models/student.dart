import 'package:json_annotation/json_annotation.dart';

part 'student.g.dart';

@JsonSerializable()

class Student {
  String SNO;
  String SName;
  String SPass;
  String SClass;
  String SSex;
  String SAct;
   
  Student({
    this.SNO,
    this.SName,
    this.SPass,
    this.SClass,
    this.SSex,
    this.SAct,
  });

  factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);
  Map<String, dynamic> toJson() => _$StudentToJson(this);
}