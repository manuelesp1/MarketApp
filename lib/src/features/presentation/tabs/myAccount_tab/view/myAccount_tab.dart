import 'package:flutter/material.dart';

class MyAccountTab extends StatefulWidget {
  MyAccountTab({Key key}) : super(key: key);

  @override
  _MyAccountTabState createState() => _MyAccountTabState();
}

class _MyAccountTabState extends State<MyAccountTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Text('mi cuenta')),
    );
  }
}