import 'package:json_annotation/json_annotation.dart';
import "student.dart";
import "cacheConfig.dart";
part 'profile.g.dart';

@JsonSerializable()
class Profile {
    Profile();

    Student user;
    String token;
    CacheConfig cache;
    String lastLogin;
    
    factory Profile.fromJson(Map<String,dynamic> json) => _$ProfileFromJson(json);
    Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
