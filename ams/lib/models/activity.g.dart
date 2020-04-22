// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return Activity(
      AName: json['AName'] as String,
      ATime: json['ATime'] as String,
      APlace: json['APlace'] as String,
      AContent: json['AContent'] as String,
      ANature: json['ANature'] as String);
}

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
      'AName': instance.AName,
      'ATime': instance.ATime,
      'APlace': instance.APlace,
      'AContent': instance.AContent,
      'ANature': instance.ANature
    };
