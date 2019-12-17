import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter/widgets.dart';
import 'package:template_app/features.dart';
import 'package:template_app/theme/app_icons.dart';

class CategoryCardWidget extends StatelessWidget {
  final Widget title;
  final String asset;

  CategoryCardWidget(this.title, this.asset);

  factory CategoryCardWidget.forDesignTime() {
    return CategoryCardWidget(Text('New'), AppIcons.categoryCard1);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.white,
        semanticContainer: false,
        margin: EdgeInsets.all(0),
        clipBehavior: Clip.antiAlias,
        child: AspectRatio(
          aspectRatio: 3.43,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: DefaultTextStyle(
                        style: Theme.of(context)
                            .textTheme
                            .headline
                            .copyWith(fontWeight: FontWeight.w800),
                        child: title,
                      ),
                    )),
                Expanded(
                    child: Image.asset(asset))
              ],
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      onTap: () {
        CatalogPage.go(context);
      },
    );
  }
}
