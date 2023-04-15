import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hedma_app/screens/home_page.dart';
import 'package:hedma_app/screens/update_product.dart';
import 'package:hedma_app/services/update_product_services.dart';

void main() {
  runApp(HedmaApp());
}

class HedmaApp extends StatelessWidget {
  const HedmaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: ((context) => HomePage()),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
