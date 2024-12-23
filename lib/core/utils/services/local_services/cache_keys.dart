import 'cache_helper.dart';

class CacheKeysManger {
  static bool onBoardingStatus() =>
      CacheHelper.getData(key: 'onBoarding') ?? false;
  static bool darkModeStatus() => CacheHelper.getData(key: 'darkMode') ?? false;
  static String tokenStatus() => CacheHelper.getData(key: 'token') ?? "";
  static String remember() =>
      CacheHelper.getData(key: 'remember') ?? "";
  static String getUserLanguageFromCache() =>
      CacheHelper.getData(key: 'language') ?? "en";
  static int userId() => CacheHelper.getData(key: 'userId') ?? 0;
}
