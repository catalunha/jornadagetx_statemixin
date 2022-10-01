import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_statemixin/pages/home_bindings.dart';
import 'package:jornadagetx_statemixin/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get State Mixin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          binding: HomeBindings(),
          page: () => HomePage(),
        ),
      ],
    );
  }
}
