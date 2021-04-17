import 'package:flutter/material.dart';

class SellTab extends StatefulWidget {
  SellTab({Key key}) : super(key: key);

  @override
  _SellTabState createState() => _SellTabState();
}

class _SellTabState extends State<SellTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ventas')),
    );
  }
}
