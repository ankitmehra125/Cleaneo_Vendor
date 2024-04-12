import 'package:cleaneo_vendor/Home/BotNav.dart';
import 'package:cleaneo_vendor/Home/Drawer.dart';
import 'package:cleaneo_vendor/Home/Home_/Home.dart';
import 'package:cleaneo_vendor/Home/Inventory%20Request/addToCartBottomSheet.dart';
import 'package:cleaneo_vendor/Home/Inventory%20Request/inventory_request_page.dart';
import 'package:cleaneo_vendor/Home/OrderRequests/OrderRequests.dart';
import 'package:cleaneo_vendor/Home/OrderStatus/OrderStatus.dart';
import 'package:cleaneo_vendor/Home/OrderStatus/otp_process_page.dart';
import 'package:cleaneo_vendor/Home/YourOrders/YourOrders.dart';
import 'package:cleaneo_vendor/Screens/Auth/Login.dart';
import 'package:cleaneo_vendor/Screens/Auth/OTP.dart';
import 'package:cleaneo_vendor/Screens/Splash.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/Location.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/Verified.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/Verifying.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/addStore.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/confirmLegal.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/storePics.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/tandc.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/uploadAdhaar.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/uploadPAN.dart';
import 'package:cleaneo_vendor/Screens/Welcome/WelcomePage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Screens/Auth/Signup.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static void setLocale(BuildContext context, String languageCode) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    if (state != null) {
      state.setLocale(languageCode);
    } else {
      throw Exception("Can't find _MyAppState");
    }
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Locale _locale = const Locale('en');

  void setLocale(String languageCode) {
    setState(() {
      _locale = Locale(languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cleaneo Vendor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: _locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ], 
      supportedLocales: const [Locale('en'), Locale('hi')],
      home: SplashScreen()
    );
  }
}

void main()
{
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ));
}
