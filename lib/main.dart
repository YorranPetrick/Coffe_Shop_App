import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(const CoffeShop());

class CoffeShop extends StatelessWidget {
  const CoffeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
