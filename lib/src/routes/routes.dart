import 'package:flutter/material.dart';
import 'package:market/src/features/presentation/login_page/view/login_page.dart';
import 'package:market/src/features/presentation/newProduct_page/view/newProduct_page.dart';

final routes = <String, WidgetBuilder>{
  'login': (BuildContext context) => LoginPage(),
  'new_product': (BuildContext context) => NewProductPage(),
};
