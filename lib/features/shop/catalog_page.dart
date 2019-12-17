import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:template_app/widgets.dart';

class CatalogPage extends StatefulWidget {

  static go(BuildContext context) {
    Navigator.of(context).push(CupertinoPageRoute(builder: (context) => CatalogPage()));
  }

  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        title: Text('Women’s tops', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),),
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
