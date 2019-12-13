import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'widgets.dart';

class DemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo widget'),
        ),
      body: Container(
        child: GroupProductsWidget(),
      ),
    );
  }
}
