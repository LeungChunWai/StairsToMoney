// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Student _$StudentFromJson(Map<String, dynamic> json) {
  return Student(
      SNO: json['SNO'] as String,
      SName: json['SName'] as String,
      SPass: json['SPass'] as String,
      SClass: json['SClass'] as String,
      SSex: json['SSex'] as String,
      SAct: json['SAct'] as String);
}

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
      'SNO': instance.SNO,
      'SName': instance.SName,
      'SPass': instance.SPass,
      'SClass': instance.SClass,
      'SSex': instance.SSex,
      'SAct': instance.SAct
    };
