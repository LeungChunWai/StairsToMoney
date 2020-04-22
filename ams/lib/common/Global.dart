// import 'package:ams/httpUtil.dart';

// import '../models/cacheConfig.dart';
// import '../models/profile.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Global {
//   static SharedPreferences _prefs;
//   static Profile profile = Profile();



//   //初始化全局信息，会在APP启动时执行
//   static Future init() async {
//     _prefs = await SharedPreferences.getInstance();
//     var _profile = _prefs.getString("profile");
//     if (_profile != null) {
//       try {
//         profile = Profile.fromJson(jsonDecode(_profile));
//       } catch (e) {
//         print(e);
//       }
//     }

//     // 如果没有缓存策略，设置默认缓存策略
//     profile.cache = profile.cache ?? CacheConfig()
//       ..enable = true
//       ..maxAge = 3600
//       ..maxCount = 100;

//     //初始化网络请求相关配置
//     HttpUtil();
//   }

//   // 持久化Profile信息
//   static saveProfile() =>
//       _prefs.setString("profile", jsonEncode(profile.toJson()));
// }