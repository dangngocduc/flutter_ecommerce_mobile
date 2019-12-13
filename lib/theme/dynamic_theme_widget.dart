import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:template_app/theme/custom_theme_data.dart';

class DynamicThemeWidget extends StatefulWidget {

  final Widget child;

  final CustomThemeData customThemeData;

  final ThemeData initThemeData;

  final Locale initLocale;

  DynamicThemeWidget({this.child, this.customThemeData, this.initThemeData,
    this.initLocale});

  @override
  _DynamicThemeWidgetState createState() => _DynamicThemeWidgetState();
}

class _DynamicThemeWidgetState extends State<DynamicThemeWidget> {

  CustomThemeData _customColor;

  ThemeData _themeData;

  Locale _locale;

  ThemeData get themeData => _themeData;

  CustomThemeData get customColor => _customColor;

  Locale get locale => _locale;

  @override
  void initState() {
    super.initState();
    _customColor = widget.customThemeData;
    _themeData = widget.initThemeData;
    _locale = widget.initLocale;
  }

  void changeLanguage(Locale locale) {
    setState(() {
      this._locale = locale;
    });
  }

  void changeTheme(ThemeData themeData, CustomThemeData customColor) {
    setState(() {
      this._themeData = themeData;
      this._customColor = customColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      child: widget.child,
      value: this,
    );
  }
}

class DynamicTheme extends InheritedWidget {

  final _DynamicThemeWidgetState value;

  ThemeData get themeData => value.themeData;

  CustomThemeData get customColor => value.customColor;

  Locale get locale => value.locale;

  void changeTheme(ThemeData themeData, CustomThemeData customColor) {
    value.changeTheme(themeData, customColor);
  }

  void changeLanguage(Locale locale) {
    value.changeLanguage(locale);
  }

  DynamicTheme({
    Key key,
    @required this.value,
    @required Widget child,
  }) : assert(value != null), assert(child != null), super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static DynamicTheme of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DynamicTheme>();
  }
}
