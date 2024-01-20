import 'package:flutter/material.dart';
import '../pages/page_details_coffee.dart';

class CardGridView extends StatelessWidget {
  final String coffeeImage;
  final String nameCoffee;
  final String descriptionCoffee;
  final String valueCoffee;

  const CardGridView(
      {required this.coffeeImage,
      required this.nameCoffee,
      required this.descriptionCoffee,
      required this.valueCoffee,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PageDetailsCoffee(
                    coffeeImagePageDetails: coffeeImage,
                    nameCoffeePageDetails: nameCoffee,
                    descriptionCoffeePageDetails: descriptionCoffee,
                    valueCoffeePageDetails: valueCoffee,
                  )),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF212325),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(coffeeImage),
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                nameCoffee,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                descriptionCoffee,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ $valueCoffee',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE57734),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: const Expanded(
                    child: Center(
                      child: Icon(Icons.favorite),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
