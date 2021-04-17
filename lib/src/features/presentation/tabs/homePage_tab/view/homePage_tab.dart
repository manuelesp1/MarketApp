import 'package:flutter/material.dart';

class HomePageTab extends StatefulWidget {
  HomePageTab({Key key}) : super(key: key);

  @override
  _HomePageTabState createState() => _HomePageTabState();
}

class _HomePageTabState extends State<HomePageTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Text('home')),
    );
  }
}