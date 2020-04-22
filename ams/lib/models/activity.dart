import 'package:json_annotation/json_annotation.dart';

part 'activity.g.dart';

@JsonSerializable()

class Activity {
  String AName;
  String ATime;
  String APlace;
  String AContent;
  String ANature;
   
  Activity({
    this.AName,
    this.ATime,
    this.APlace,
    this.AContent,
    this.ANature,
  });

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityToJson(this);
}