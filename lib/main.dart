import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/utils/roots/app_router.dart';
import 'core/utils/services/local_services/cache_helper.dart';
import 'core/utils/services/remote_services/service_locator.dart';
import 'core/utils/theme/app_theme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  setup();
  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale("en"),
        ],
        saveLocale: true,
        startLocale: const Locale("en"),
        path: "lib/core/language",
        child: const XTechTask()),
  );
}

class XTechTask extends StatefulWidget {
  const XTechTask({super.key});

  @override
  State<XTechTask> createState() => _XTechTaskState();
}

class _XTechTaskState extends State<XTechTask> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xffF9F9F9),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
      ),
      child: Builder(builder: (context) {
        return MaterialApp.router(
          title: "XTech Task",
          theme: themeDataLight,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        );
      }),
    );
  }
}
