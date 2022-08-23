import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moments/core/utils/user_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/choose_role_screen.dart';
import 'pages/login_screen.dart';
import 'pages/onboarding_screen_1_screen.dart';
import 'pages/register_screen.dart';
import 'pages/vendor_adding_new_service_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'core/app_export.dart';

import 'pages/onboarding_screen_2_screen.dart';
import 'pages/onboarding_screen_3_screen.dart';
import 'pages/signup_screen.dart';
import 'pages/user_home_screen.dart';
import 'pages/user_search_item_not_found_screen.dart';
import 'pages/user_vendor_account_screen.dart';
import 'pages/user_venue_option_selected_choice_tapped_screen.dart';
import 'pages/user_venue_option_selected_screen.dart';

import 'pages/vendor_editing_a_existing_service_screen.dart';
import 'pages/vendor_home_screen.dart';
import 'pages/vendor_home_screen_with_services_screen.dart';
import 'package:firebase_core/firebase_core.dart';

// 



Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(appBarTheme: AppBarTheme(color: const Color(0xff950320))),
      //initialRoute: initScreen == 0 || initScreen == null ? 'onboard' : 'home',
      home: VendorHomeScreen(),
    );
  }
}
