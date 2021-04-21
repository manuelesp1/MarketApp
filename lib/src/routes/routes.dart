import 'package:flutter/material.dart';
import 'package:market/src/features/presentation/login_page/view/login_page.dart';
import 'package:market/src/features/presentation/prueba.dart';
import 'package:market/src/features/presentation/tabs/add_tab/view/add_tab.dart';
import 'package:market/src/features/presentation/tabs/principal_tab/view/principal_tab.dart';
import 'package:market/src/features/presentation/tabs/products_tab/view/products_tab.dart';

final routes = <String, WidgetBuilder>{
  'login': (BuildContext context) => LoginPage(),
  'prueba': (BuildContext context) => Prueba(),
  'tab': (BuildContext context) => PrincipalTab(),
  'add': (BuildContext context) => AddTab(),
  'products': (BuildContext context) => ProductsTab(),
};
