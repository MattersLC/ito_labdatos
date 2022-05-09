import 'package:flutter/material.dart';
import 'package:ito_laboratorio_bdatos/src/screens/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITO Laboratorio de Base de Datos',
      initialRoute: '/',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF01325E),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white)
      ),
      routes: {
        '/': (BuildContext context) => const LoginPage(),
      },
    );
  }
}
