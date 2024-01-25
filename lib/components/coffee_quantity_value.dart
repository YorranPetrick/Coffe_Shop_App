import 'package:flutter/material.dart';

import '../pages/coffee_shopping.dart';

class CoffeQuantityValue extends StatefulWidget {
  final double valueCoffeeVariable;
  const CoffeQuantityValue({required this.valueCoffeeVariable, Key? key})
      : super(key: key);

  @override
  State<CoffeQuantityValue> createState() => _CoffeQuantityValueState();
}

class _CoffeQuantityValueState extends State<CoffeQuantityValue> {
  int quantityCoffe = 0;
  double valueCoffee = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 3,
                  color: const Color(0xFFE57734),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        quantityCoffe++;
                        valueCoffee =
                            widget.valueCoffeeVariable * quantityCoffe;
                        //print(quantityCoffe);
                        //print(valueCoffee);
                      });
                    },
                    child: const Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '$quantityCoffe',
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      if (quantityCoffe > 0) {
                        setState(() {
                          quantityCoffe--;
                          valueCoffee =
                              widget.valueCoffeeVariable * quantityCoffe;
                          //print(quantityCoffe);
                          //print(valueCoffee);
                        });
                      }
                    },
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Valor Final a pagar
            Text(
              '\$ $valueCoffee',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        //Botão de Add ao Cart
        Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoffeeShopping(
                    valueCoffee: '$valueCoffee',
                  ),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFE57734),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Add to Cart',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
