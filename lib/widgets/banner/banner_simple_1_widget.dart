import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:template_app/theme/app_icons.dart';
import 'package:template_app/theme/constants.dart';

class BannerSimple1Widget extends StatelessWidget {

  final String image;
  final String title;

  BannerSimple1Widget(this.image, this.title);

  factory BannerSimple1Widget.forDesignTime() {
    return BannerSimple1Widget(AppIcons.demoSmallBanner, 'Street clothes');
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.92,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image.contains('http') ? NetworkImage(image) : AssetImage(image)
          )
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Padding(
                padding: kPaddingStandard,
                child: Text(title,
                  style: Theme.of(context).textTheme.display1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800
                  ),
                ),
              ),
              bottom: 0,
            )
          ],
        ),
      ),
    );
  }
}
