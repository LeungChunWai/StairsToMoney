// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return Organization(
      ONO: json['ONO'] as String,
      OPass: json['OPass'] as String,
      OName: json['OName'] as String,
      ONature: json['ONature'] as String,
      OAct: json['OAct'] as String);
}

Map<String, dynamic> _$OrganizationToJson(Organization instance) =>
    <String, dynamic>{
      'ONO': instance.ONO,
      'OPass': instance.OPass,
      'OName': instance.OName,
      'ONature': instance.ONature,
      'OAct': instance.OAct
    };
