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
      customThemeData: CustomThemeData(),
      initThemeData: ThemeData.light().copyWith(
        primaryColor: Colors.red,
        colorScheme: ColorScheme.light(),
        textTheme: GoogleFonts.quicksandTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initLocale: Locale('vi', 'VN'),
      child: Application(),
    );
  }

}