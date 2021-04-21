import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:market/src/features/presentation/login_page/view/login_page.dart';
import 'package:market/src/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'login',
      home: LoginPage(),
    );
  }
}
