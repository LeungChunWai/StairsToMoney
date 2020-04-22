import 'package:json_annotation/json_annotation.dart';

part 'organization.g.dart';

@JsonSerializable()

class Organization {
  String ONO;
  String OPass;
  String OName;
  String ONature;
  String OAct;
   
  Organization({
    this.ONO,
    this.OPass,
    this.OName,
    this.ONature,
    this.OAct,
  });

  factory Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}