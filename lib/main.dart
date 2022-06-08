import 'package:crud_app/pages/HomePage.dart';
import 'package:crud_app/routes.dart';
import 'package:flutter/material.dart';

import 'pages/Formulario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Crud no Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/home',
        routes: routes());
  }
}
