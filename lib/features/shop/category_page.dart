import 'package:flutter/material.dart';
import 'package:template_app/theme/app_icons.dart';
import 'package:template_app/widgets.dart';
import 'dart:developer' as developer;

import 'package:template_app/widgets/banner/banner_simple_2_widget.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          BannerSimple2Widget.forDesignTime(),
          Divider(
            color: Colors.transparent,
          ),
          CategoryCardWidget.forDesignTime(),
          Divider(
            color: Colors.transparent,
          ),
          CategoryCardWidget(Text('Clothes'), AppIcons.categoryCard2),
          Divider(
            color: Colors.transparent,
          ),
          CategoryCardWidget(Text('Shoes'), AppIcons.categoryCard1),
          Divider(
            color: Colors.transparent,
          ),
          CategoryCardWidget(Text('Accesories'), AppIcons.categoryCard2),

        ],
      ),
    );
  }
}
