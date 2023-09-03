import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toutousotre_project/src/constants.dart';
import 'package:toutousotre_project/src/pages/thanksPage.dart';
import 'package:toutousotre_project/src/widget/views/details_product_widget.dart';
import 'package:toutousotre_project/src/widget/navBar_widget.dart';
import 'package:toutousotre_project/src/pages/signinPage.dart';
import 'package:toutousotre_project/src/splash/splash_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture app',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        hintColor: kBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/splashScreen": (context) => AnimatedSplashScreen(),
        "/home": (context) => NavBarWidget(),
        "/detailsProduct": (context) => DetailsProductWidget(),
        "/signIn": (context) => SignInPage(),
        "/thanksPage": (context) => ThanksPage()
      },
      home: AnimatedSplashScreen(),
    );
  }
}
