import 'package:flutter/material.dart';

import 'package:template_app/widgets.dart';

class SimpleTitleWidget extends StatelessWidget {

  final Widget action;
  final Widget title;
  final Widget subTitle;
  
  factory SimpleTitleWidget.forDesignTime() {
    return  SimpleTitleWidget(
      title: Text('Sale'),
      subTitle: Text('Super summer sale'),
      action: Text('View all'),
    );
  }

  SimpleTitleWidget({this.title, this.subTitle, this.action});

  @override
  Widget build(BuildContext context) {
    debugPrint('SimpleTitleWidget ${Theme.of(context).colorScheme.toString()}');
    return Container(
      padding: kPaddingStandard,
        child: Row(
          children: <Widget>[
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                DefaultTextStyle(
                    style: Theme.of(context).textTheme.display1.copyWith(
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).colorScheme.onBackground
                    ),
                    child: title),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.caption,
                  child: subTitle,
                )
              ],
            )),
            DefaultTextStyle(
                style: Theme.of(context).textTheme.body2.copyWith(
                  fontWeight: FontWeight.w300
                ),
                child: action,)
          ],
        ),
    );
  }
}
