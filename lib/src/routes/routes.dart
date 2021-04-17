import 'package:flutter/material.dart';
import 'package:market/src/features/presentation/login_page/view/login_page.dart';
import 'package:market/src/features/presentation/newProduct_page/view/newProduct_page.dart';
import 'package:market/src/features/presentation/prueba.dart';
import 'package:market/src/features/presentation/tabs/principal_tab/view/principal_tab.dart';

final routes = <String, WidgetBuilder>{
  'login': (BuildContext context) => LoginPage(),
  'new_product': (BuildContext context) => NewProductPage(),
  'prueba': (BuildContext context) => Prueba(),
  'tab': (BuildContext context) => PrincipalTab(),
};
