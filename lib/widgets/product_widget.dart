import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

const Color _kKeyUmbraOpacity = Color(0x24000000); //
const Color _kKeyPenumbraOpacity = Color(0x1F000000); // alpha = 0.14
const Color _kAmbientShadowOpacity = Color(0x1F000000); // alpha = 0.12

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,

          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                ClipRRect(
                  child: AspectRatio(
                    aspectRatio: 0.75,
                    child: Container(
                      child: Image.network(
                        'https://media-ak.static-adayroi.com/240_346/90/h5a/hb7/26403520118814.jpg',
                        fit: BoxFit.cover,),
                    ),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                Positioned(
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shadows: <BoxShadow>[
                        BoxShadow(offset: Offset(0.0, 1.0), blurRadius: 1.0, spreadRadius: -1.0, color: _kKeyUmbraOpacity),
                        BoxShadow(offset: Offset(0.0, 4.0), blurRadius: 4.0, spreadRadius: 0.0, color: _kKeyPenumbraOpacity),
                        BoxShadow(offset: Offset(0.0, 6.0), blurRadius: 6.0, spreadRadius: 0.0, color: _kAmbientShadowOpacity),
                      ],
                      shape: CircleBorder(),),
                    child: IconButton(
                      icon: Icon(Icons.favorite, color: Colors.red, size: 20,),
                      onPressed: () {},
                    ),
                  ),
                  bottom: -24,
                  right: 0,)
              ],
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
            Text(
              'Dorothy Perkins',
              style: Theme.of(context).textTheme.caption.copyWith(
                color: Theme.of(context).hintColor,
              ),
            ),
            Text(
              'Evening Dress',
              style: Theme.of(context).textTheme.title,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: <Widget>[
                  Text('15\$', style: Theme.of(context).textTheme.subhead.copyWith(
                      color: Theme.of(context).hintColor,
                      fontWeight: FontWeight.w500
                  ),),
                  SizedBox(width: 8,),
                  Text('10\$', style: Theme.of(context).textTheme.subhead.copyWith(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
