import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template_app/widgets/menu_profile_account_item_widget.dart';
import 'dart:developer' as developer;

import 'bag/bag_sliver_persistent_header_delegate.dart';
import 'profile/order_history_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //songtucafe
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Theme(
        data: Theme.of(context).copyWith(
          textTheme: Theme.of(context).textTheme.copyWith(
            subhead: Theme.of(context).textTheme.subhead.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 18
            )
          )
        ),
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              delegate: BagSliverPersistentHeaderDelegate(MediaQuery.of(context).padding.top),
            ),
            SliverToBoxAdapter(
              child: MenuProfileAccountItemWidget(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                  [
                    ListTile(
                      title: Text('My orders'),
                      subtitle: Text('Already have 12 orders'),
                      trailing: Icon(Icons.navigate_next),
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context) => OrderHistoryPage()));
                      },
                    ),
                    ListTile(
                      title: Text('Shipping addresses'),
                      subtitle: Text('3 ddresses'),
                      trailing: Icon(Icons.navigate_next),
                    ),
                    ListTile(
                      title: Text('Payment methods'),
                      subtitle: Text('Visa  **34'),
                      trailing: Icon(Icons.navigate_next),
                    ),
                    ListTile(
                      title: Text('Promocodes'),
                      subtitle: Text('You have special promocodes'),
                      trailing: Icon(Icons.navigate_next),
                    ),
                    ListTile(
                      title: Text('My reviews'),
                      subtitle: Text('Reviews for 4 items'),
                      trailing: Icon(Icons.navigate_next),
                    ),
                    ListTile(
                      title: Text('Settings'),
                      subtitle: Text('Notifications, password'),
                      trailing: Icon(Icons.navigate_next),
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
