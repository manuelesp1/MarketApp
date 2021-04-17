import 'package:flutter/material.dart';

class ProductsTab extends StatefulWidget {
  ProductsTab({Key key}) : super(key: key);

  @override
  _ProductsTabState createState() => _ProductsTabState();
}

class _ProductsTabState extends State<ProductsTab> {
  double _fontsize = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 20,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Buscar'),
                  ),
                ),
                Container(
                    child: RaisedButton(
                  child: Text(
                    'Buscar',
                  ),
                  onPressed: () {},
                ))
              ],
            ),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: FlatButton(
                          child: Text(
                            'tipo 1---------',
                            style: TextStyle(fontSize: _fontsize),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: FlatButton(
                          child: Text(
                            'tipo 2---------',
                            style: TextStyle(fontSize: _fontsize),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: FlatButton(
                          child: Text(
                            'tipo 3---------',
                            style: TextStyle(fontSize: _fontsize),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: FlatButton(
                          child: Text(
                            'tipo 4---------',
                            style: TextStyle(fontSize: _fontsize),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: FlatButton(
                          child: Text(
                            'tipo 5---------',
                            style: TextStyle(fontSize: _fontsize),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget typeContent(BuildContext context) {}
}
