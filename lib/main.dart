import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:coodehub/ui/common/local_noti.dart';
import 'package:coodehub/ui/common/nav.dart';
import 'package:coodehub/ui/pages/auth/signup.dart';
import 'package:coodehub/ui/pages/courses/pagesys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'constants/app_constants.dart';
import 'controllers/login_provider.dart';
import 'controllers/mentor_provider.dart';
import 'controllers/onboarding_provider.dart';
import 'controllers/profile_provider.dart';
import 'controllers/signup_provider.dart';

void main(List<String> args) async {
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.white)
    ],
    debug: true
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => OnBoardNotifier()),
    ChangeNotifierProvider(create: (context) => LoginNotifier()),
    ChangeNotifierProvider(create: (context) => SignUpNotifier()),
    ChangeNotifierProvider(create: (context) => MentorNotifier()),
    ChangeNotifierProvider(create: (context) => ProfileNotifier()),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    AwesomeNotifications().isNotificationAllowed().then((isallowed) => {
      if(!isallowed){
        AwesomeNotifications().requestPermissionToSendNotifications()
      }
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: AppConfig.name,
              theme: ThemeData(
                primarySwatch: Colors.grey,
              ),
              home:  const NavBar());
        });
  }
}
