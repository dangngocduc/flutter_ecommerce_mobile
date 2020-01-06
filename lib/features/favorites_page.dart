import 'package:flutter/material.dart';
import 'package:template_app/widgets/product_catalog_widget.dart';
import 'dart:developer' as developer;

import 'package:template_app/widgets/sort_filter_widget.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          title: Text('Favorites', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                onPressed: () {})
          ],
          bottom: PreferredSize(
              child: Container(
                  height: 96,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 48,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            children: <Widget>[
                              RawChip(
                                  backgroundColor: Colors.black,
                                  label: Text('T-shirts', style: TextStyle(color: Colors.white),)),
                              SizedBox(width: 8,),
                              RawChip(
                                  backgroundColor: Colors.black,
                                  label: Text('Outerwear', style: TextStyle(color: Colors.white),)),
                              SizedBox(width: 8,),
                              RawChip(
                                  backgroundColor: Colors.black,
                                  label: Text('Cardigans & Sweaters', style: TextStyle(color: Colors.white),)),
                              SizedBox(width: 8,),
                              RawChip(
                                  backgroundColor: Colors.black,
                                  label: Text('Dresses', style: TextStyle(color: Colors.white),))
                            ],
                          ),
                        ),
                      ),
                      SortFilterWidget()
                    ],
                  )
              ),
              preferredSize: Size.fromHeight(96)),
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(16),
          itemBuilder: (context, index) => ProductCatalogWidget(),
          itemCount: 12,
          separatorBuilder: (context, _) => Divider(height: 8, color: Colors.transparent,),
        )
    );
  }
}
