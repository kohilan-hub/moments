import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kohilan_s_application1/pages/onboarding_screen_1_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.lightBlue),
      //initialRoute: initScreen == 0 || initScreen == null ? 'onboard' : 'home',
      home: OnboardingScreen1Screen(),
    );
  }
}
