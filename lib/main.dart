import 'package:coodehub/ui/pages/roadmaps/homeroadmaps.dart';
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

/*

  if (entrypoint != true) {
    defaulthome = const SecurityCodeScreen();
  } else if (isLogged == true) {
    defaulthome = const NavBar();
  } else if (ismentorlogged == true) {
   
  } else {
    defaulthome = const SecurityCodeScreen();
  }*/

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => OnBoardNotifier()),
    ChangeNotifierProvider(create: (context) => LoginNotifier()),
    ChangeNotifierProvider(create: (context) => SignUpNotifier()),
    ChangeNotifierProvider(create: (context) => MentorNotifier()),
    ChangeNotifierProvider(create: (context) => ProfileNotifier()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
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
              home:  const LearningPathScreen());
        });
  }
}
