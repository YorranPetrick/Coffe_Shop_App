import 'package:flutter/material.dart';
import '../reusable_widgets/back_button.dart';

class CoffeeShopping extends StatefulWidget {
  final String valueCoffee;
  const CoffeeShopping({required this.valueCoffee, Key? key}) : super(key: key);

  @override
  State<CoffeeShopping> createState() => _CoffeeShoppingState();
}

class _CoffeeShoppingState extends State<CoffeeShopping> {
  List<String> informationValueQuantity = ['4', '5', '7'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BackkButton(),
          ...informationValueQuantity
              .map((item) => Text(
                    item,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
