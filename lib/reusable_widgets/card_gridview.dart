import 'package:flutter/material.dart';
import '../pages/page_details_coffee.dart';

class CardGridView extends StatefulWidget {
  final String coffeeImage;
  final String nameCoffee;
  final String descriptionCoffee;
  final String valueCoffee;

  CardGridView(
      {required this.coffeeImage,
      required this.nameCoffee,
      required this.descriptionCoffee,
      required this.valueCoffee,
      Key? key})
      : super(key: key);

  @override
  State<CardGridView> createState() => _CardGridViewState();
}

class _CardGridViewState extends State<CardGridView> {
  bool iconFavoriteColor = false;
  bool containerIconFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PageDetailsCoffee(
                    coffeeImagePageDetails: widget.coffeeImage,
                    nameCoffeePageDetails: widget.nameCoffee,
                    descriptionCoffeePageDetails: widget.descriptionCoffee,
                    valueCoffeePageDetails: widget.valueCoffee,
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
              child: Image.asset(widget.coffeeImage),
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                widget.nameCoffee,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                widget.descriptionCoffee,
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
                  '\$ ${widget.valueCoffee}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: containerIconFavorite
                        ? Colors.white
                        : Color(0xFFE57734),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        iconFavoriteColor = true;
                        containerIconFavorite = true;
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        iconFavoriteColor = false;
                        containerIconFavorite = false;
                      });
                    },
                    child: Expanded(
                      child: Center(
                        child: Icon(Icons.favorite,
                            color:
                                iconFavoriteColor ? Colors.red : Colors.white),
                      ),
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
