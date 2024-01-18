import 'package:flutter/material.dart';
import 'pages/login.dart';

void main() => runApp(const CoffeShop());

class CoffeShop extends StatelessWidget {
  const CoffeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const LoginPage(),
    );
  }
}
