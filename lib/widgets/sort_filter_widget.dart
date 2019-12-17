import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:template_app/theme/app_icons.dart';

class SortFilterWidget extends StatefulWidget {
  @override
  _SortFilterWidgetState createState() => _SortFilterWidgetState();
}

class _SortFilterWidgetState extends State<SortFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
              onPressed: null, 
              child: Row(
                children: <Widget>[
                  SvgPicture.asset(AppIcons.filter, color: Colors.black,),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Filters', style: Theme.of(context).textTheme.subhead,),
                  )
                ],
              )),
          FlatButton(
              onPressed: null,
              child: Row(
                children: <Widget>[
                  SvgPicture.asset(AppIcons.sort, color: Colors.black,),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Price: lowest to high', style: Theme.of(context).textTheme.subhead,),
                  )
                ],
              )),
          IconButton(icon: Icon(Icons.view_column), onPressed: (){})

        ],
      ),
    );
  }
}
