import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:template_app/theme/app_icons.dart';

class BagItemWidget extends StatelessWidget {
  final String assets;

  BagItemWidget(this.assets);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: IntrinsicHeight(
          child: Row(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.25,
                child: Container(
                  width: 80,
                  child: Image.asset(
                    assets,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'T-Shirt',
                              style: Theme.of(context).textTheme.subhead.copyWith(
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Color: Gray',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                Text('Size: L',
                                    style: Theme.of(context).textTheme.caption)
                              ],
                            )
                          ],
                        )),
                        IconButton(
                            icon: Icon(Icons.more_vert), onPressed: () {})
                      ],
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 32,
                            height: 32,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: kElevationToShadow[1]
                            ),
                            child: Icon(Icons.remove, size: 16,),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 32,
                            height: 32,
                            child: Text('1', style: Theme.of(context).textTheme.body2.copyWith(
                                fontWeight: FontWeight.w900
                            ),),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: kElevationToShadow[1]
                            ),
                            child: Icon(Icons.add, size: 16,),
                          ),
                          Expanded(
                            child: Text('43\$',
                              textAlign: TextAlign.right,
                              style: Theme.of(context).textTheme.subhead.copyWith(
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ).copyWith(right: 16),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      clipBehavior: Clip.hardEdge,
    );
  }
}
