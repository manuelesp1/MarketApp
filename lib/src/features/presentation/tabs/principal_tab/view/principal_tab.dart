import 'package:flutter/material.dart';
import 'package:market/src/features/presentation/tabs/add_tab/view/add_tab.dart';
import 'package:market/src/features/presentation/tabs/homePage_tab/view/homePage_tab.dart';
import 'package:market/src/features/presentation/tabs/myAccount_tab/view/myAccount_tab.dart';
import 'package:market/src/features/presentation/tabs/products_tab/view/products_tab.dart';
import 'package:market/src/features/presentation/tabs/sell_tab/view/sell_tab.dart';

class PrincipalTab extends StatefulWidget {
  PrincipalTab({Key key}) : super(key: key);

  @override
  _PrincipalTabState createState() => _PrincipalTabState();
}

class _PrincipalTabState extends State<PrincipalTab> {
  List<Widget> _widgetOptions = [
    HomePageTab(),
    ProductsTab(),
    AddTab(),
    SellTab(),
    MyAccountTab(),
  ];

  int _selectedItemIndex = 0;

  _widgetChange(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: menuNavigationBottom(context),
      body: _widgetOptions.elementAt(_selectedItemIndex),
    );
  }

  Widget menuNavigationBottom(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      currentIndex: _selectedItemIndex,
      onTap: _widgetChange,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.badge),
          label: 'Productos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Agregar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.spellcheck),
          label: 'Ventas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: 'Mi cuenta',
        ),
      ],
    );
  }
}
