import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_app/theme/custom_theme_data.dart';
import 'package:template_app/theme/dynamic_theme_widget.dart';

import 'application.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicThemeWidget(
      customThemeData: CustomThemeData.light(),
      initThemeData: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        colorScheme: ColorScheme.light().copyWith(
          onPrimary: Colors.black87,
          secondary: Colors.redAccent,
          primary: Colors.white,
        ),
        textTheme: GoogleFonts.quicksandTextTheme(

        ),
        primaryTextTheme: GoogleFonts.quicksandTextTheme(

        ),

        tabBarTheme: TabBarTheme(
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: Colors.redAccent,
              width: 4
            ),
          ),
          labelColor: Colors.black87,
          labelStyle: GoogleFonts.quicksand().copyWith(
              color: Colors.black87,
              fontWeight: FontWeight.w800
          ),
          unselectedLabelColor: Colors.black54,
          unselectedLabelStyle: GoogleFonts.quicksand().copyWith(
            color: Colors.black54
          ),
        ),
        bottomAppBarColor: Colors.transparent
      ),
      initLocale: Locale('vi', 'VN'),
      child: Application(),
    );
  }

}