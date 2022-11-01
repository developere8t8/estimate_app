// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gutter_app/app_screens/add_customer_screen.dart';
import 'package:gutter_app/app_screens/add_line_item_screen.dart';
import 'package:gutter_app/app_screens/add_service_next_screen.dart';
import 'package:gutter_app/app_screens/add_service_screen.dart';
import 'package:gutter_app/app_screens/dashboard_screen.dart';
import 'package:gutter_app/app_screens/factor_calculator_screen.dart';
import 'package:gutter_app/app_screens/login_screen.dart';
import 'package:gutter_app/app_screens/new_customer_screen.dart';
import 'package:gutter_app/app_screens/new_estimate_screen.dart';
import 'package:gutter_app/theme_color.dart';
import 'package:gutter_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: buildMaterialColor(const Color(0xFF1C3879)),
            fontFamily: GoogleFonts.nunitoSans().fontFamily,
          ),
          initialRoute: MyRoutes.loginRoute,
          routes: {
            "/": (context) => LoginScreen(),
            MyRoutes.dashRoute: (context) => MyDashboard(),
            MyRoutes.popupRoute: (context) => EstimateScreen(),
            MyRoutes.addCustomer: (context) => AddCustomer(),
            MyRoutes.addLineItem: (context) => LineItem(),
            MyRoutes.customerPopupRoute: (context) => NewCustomer(),
            MyRoutes.servicePriceBook: (context) => AddService(),
            MyRoutes.materialPriceBook: (context) => NextService(),
            MyRoutes.addDiscountPopup: (context) => LineItem(),
            MyRoutes.crewFactor: (context) => FactorCalculator(),
          }),
    );
  }
}
