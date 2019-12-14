import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:template_app/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: BannerSimple1Widget.forDesignTime(),
          ),
          SliverToBoxAdapter(
            child: GroupProductsWidget(
              title: SimpleTitleWidget.forDesignTime(),
            ),
          ),
          SliverToBoxAdapter(
            child: GroupProductsWidget(title: SimpleTitleWidget(
              title: Text('New'),
              subTitle: Text('You’ve never seen it before!'),
              action: Text('View all'),
            ),
            ),
          ),
        ],
      ),
    );
  }
}
