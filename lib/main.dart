import 'package:flutter/material.dart';
import 'package:flutter_minus_get/pages/home_page_getx.dart';
import 'package:get/get.dart'; // Instalado con "flutter pub add get"
//import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Devolvemos GetMaterialApp
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      //home: HomePage(),
      home: HomePageGetx(), // cargamos HomePageGetx
    );
  }
}
