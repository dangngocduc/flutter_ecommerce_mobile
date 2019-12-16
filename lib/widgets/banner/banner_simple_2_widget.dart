import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:template_app/theme/dynamic_theme_widget.dart';

class BannerSimple2Widget extends StatelessWidget {
  final Widget title;

  final Widget subTitle;

  BannerSimple2Widget(this.title, this.subTitle);

  factory BannerSimple2Widget.forDesignTime() {
    return BannerSimple2Widget(Text('SUMMER SALES'), Text('Up to 50% off'));
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.43,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))),
          color: DynamicTheme.of(context).customColor.colorSaleHot,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DefaultTextStyle(
              style: Theme.of(context).textTheme.headline.copyWith(
                  color: DynamicTheme.of(context).customColor.onColorSaleHot,
                  fontWeight: FontWeight.w800),
              child: title,
            ),
            DefaultTextStyle(
              style: Theme.of(context).textTheme.body1.copyWith(
                  color: DynamicTheme.of(context).customColor.onColorSaleHot),
              child: subTitle,
            ),
          ],
        ),
      ),
    );
  }
}
