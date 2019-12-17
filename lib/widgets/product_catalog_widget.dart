import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:developer' as developer;

import 'package:template_app/theme/app_icons.dart';

class ProductCatalogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: Container(
        height: 112,
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(AppIcons.demoProduct2, fit: BoxFit.cover,),
            ),
            SizedBox(width: 16,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Evening Dress',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    'Dorothy Perkins',
                    style: Theme.of(context).textTheme.caption.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: <Widget>[
                        RatingBar(
                          initialRating: 3,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: 16,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text('(12)', style: Theme.of(context).textTheme.caption.copyWith(
                            fontWeight: FontWeight.w300
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: <Widget>[
                        Text('10\$', style: Theme.of(context).textTheme.subhead.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
