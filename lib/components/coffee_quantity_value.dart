import 'package:flutter/material.dart';

class CoffeQuantityValue extends StatefulWidget {
  const CoffeQuantityValue({Key? key}) : super(key: key);

  @override
  State<CoffeQuantityValue> createState() => _CoffeQuantityValueState();
}

class _CoffeQuantityValueState extends State<CoffeQuantityValue> {
  int quantityCoffe = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Row(children: [
            InkWell(
              onTap: () {
                setState(() {
                  quantityCoffe++;
                  print(quantityCoffe);
                });
              },
              child: Icon(
                Icons.add,
                size: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 5),
            Text(
              '$quantityCoffe',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(width: 5),
            InkWell(
              onTap: () {
                if (quantityCoffe > 0) {
                  setState(() {
                    quantityCoffe--;
                    print(quantityCoffe);
                  });
                }
              },
              child: Icon(
                Icons.remove,
                size: 25,
                color: Colors.white,
              ),
            ),
          ]),
        )
      ],
    );
  }
}
