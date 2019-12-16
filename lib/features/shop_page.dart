import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:template_app/features/shop/category_page.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> with SingleTickerProviderStateMixin {

  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Page',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {
          })
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              text: 'Women',
            ),
            Tab(
              text: 'Men',
            ),
            Tab(
              text: 'Kids',
            )
          ],
          controller: _tabController,
        ),
      ),
      body: PageView(
        children: <Widget>[
          CategoryPage(),
          CategoryPage(),
          CategoryPage(),
        ],
      ),
    );
  }
}
