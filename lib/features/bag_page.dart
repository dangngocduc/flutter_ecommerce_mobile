import 'package:flutter/material.dart';
import 'package:template_app/theme/app_icons.dart';
import 'dart:developer' as developer;

import 'bag/bag_item_widget.dart';
import 'bag/bag_sliver_persistent_header_delegate.dart';

class BagPage extends StatefulWidget {
  @override
  _BagPageState createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: BagSliverPersistentHeaderDelegate(MediaQuery.of(context).padding.top),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                  [
                    BagItemWidget(AppIcons.categoryCard1),
                    Divider(height: 16, color: Colors.transparent,),
                    BagItemWidget(AppIcons.demoProduct2),
                    Divider(height: 16, color: Colors.transparent,),
                    BagItemWidget(AppIcons.categoryCard1),
                    Divider(height: 16, color: Colors.transparent,),
                    BagItemWidget(AppIcons.categoryCard2),
                    Divider(height: 16, color: Colors.transparent,),
                    BagItemWidget(AppIcons.categoryCard1),
                    Divider(height: 16, color: Colors.transparent,),
                    BagItemWidget(AppIcons.demoProduct2),
                    Divider(height: 16, color: Colors.transparent,),
                    Divider(height: 16, color: Colors.transparent,),
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
