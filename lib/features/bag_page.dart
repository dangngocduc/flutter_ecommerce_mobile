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
      bottomNavigationBar: Material(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('Enter your promo code'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shadows: kElevationToShadow[2],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(8),
                        right: Radius.circular(24),
                      )
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Total amount:')),
                    Text('124\$', style: Theme.of(context).textTheme.subhead.copyWith(
                        fontWeight: FontWeight.w900
                    ),)
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(
                      vertical: 12
                  ),
                  child: Text('CHECK OUT', style: Theme.of(context).accentTextTheme.button,),
                  shape: StadiumBorder(),
                  color: Theme.of(context).colorScheme.secondary,
                ),
              )
            ],
          ),
        ),
        elevation: 4,
      ),
    );
  }
}
