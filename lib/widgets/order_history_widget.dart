import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class OrderHistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Order №1947034', style: Theme.of(context).textTheme.subhead,),
                Text('05-12-2019')
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                Text('Tracking number: '),
                Text('IW3475453455', style: Theme.of(context).textTheme.subhead,)
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                Text('Quantity: '),
                Text('3', style: Theme.of(context).textTheme.subhead,),
                Expanded(child: Container()),
                Text('Total Amount: '),
                Text('112\$', style: Theme.of(context).textTheme.subhead,),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                OutlineButton(
                  onPressed: (){},
                  shape: StadiumBorder(),
                  child: Text('Details'),
                ),
                Text('Delivered', style: Theme.of(context).textTheme.subhead,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
