import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kohilan_s_application1/pages/choose_role_screen.dart';
import 'package:kohilan_s_application1/pages/onboarding_screen_1_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'core/app_export.dart';

import 'pages/signup_screen.dart';
import 'pages/user_home_screen.dart';
import 'pages/user_search_item_not_found_screen.dart';
import 'pages/user_vendor_account_screen.dart';
import 'pages/user_venue_option_selected_choice_tapped_screen.dart';
import 'pages/user_venue_option_selected_screen.dart';

import 'pages/vendor_editing_a_existing_service_screen.dart';
import 'pages/vendor_home_screen.dart';
import 'pages/vendor_home_screen_with_services_screen.dart';

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
      home: SignupScreen(),
    );
  }
}
