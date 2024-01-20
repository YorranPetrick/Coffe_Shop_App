import 'package:flutter/material.dart';

import '../components/coffee_quantity_value.dart';
import '../components/image_background_appbar.dart';

class PageDetailsCoffee extends StatefulWidget {
  final String coffeeImagePageDetails;
  final String nameCoffeePageDetails;
  final String descriptionCoffeePageDetails;
  final String valueCoffeePageDetails;

  const PageDetailsCoffee(
      {required this.coffeeImagePageDetails,
      required this.descriptionCoffeePageDetails,
      required this.nameCoffeePageDetails,
      required this.valueCoffeePageDetails,
      Key? key})
      : super(key: key);

  @override
  State<PageDetailsCoffee> createState() => _PageDetailsCoffeeState();
}

class _PageDetailsCoffeeState extends State<PageDetailsCoffee> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFF212325),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageBackgroundAppBar(
            imageCoffe: widget.coffeeImagePageDetails,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.descriptionCoffeePageDetails,
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      widget.nameCoffeePageDetails,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CoffeQuantityValue(
                      valueCoffeeVariable: double.tryParse(
                              widget.valueCoffeePageDetails) ??
                          0.0, // caso o valor do tryParse seja nulo o valor a ser passado para a variavel será 0.0
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
