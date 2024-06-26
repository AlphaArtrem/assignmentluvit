import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luvit/firebase_options.dart';
import 'package:luvit/service_layer/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupServiceLocator();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

///App's entry point
class MyApp extends StatelessWidget {
  ///Default constructor for [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          title: appConfig.appName,
          theme: ThemeData(
            fontFamily: 'Pretendard',
          ),
          routerConfig: navigationService.appRoutersService.router,
        );
      },
    );
  }
}
