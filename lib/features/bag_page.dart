import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class BagPage extends StatefulWidget {
  @override
  _BagPageState createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bag Page'),
      ),
    );
  }
}
