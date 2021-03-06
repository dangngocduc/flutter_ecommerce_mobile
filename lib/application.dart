import 'package:flutter/material.dart';
import 'package:template_app/features.dart';
import 'dart:developer' as developer;

import 'demo_widget.dart';
import 'theme/dynamic_theme_widget.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'main',
      theme: DynamicTheme.of(context).themeData,
      routes: {
        'main': (context) => MainPage()
      },
    );
  }
}
