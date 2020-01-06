import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class MenuProfileAccountItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage('icons/ic_demo_avatar.png'),
          ),
          SizedBox(width: 16,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Matilda Brown', style: Theme.of(context).textTheme.subhead,),
                Text(('matildabrown@mail.com'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
