import 'package:flutter/material.dart';

class CardGridView extends StatelessWidget {
  final String coffeImage;
  final String nameCoffe;
  final String descriptionCoffe;
  final String valueCoffe;

  const CardGridView(
      {required this.coffeImage,
      required this.nameCoffe,
      required this.descriptionCoffe,
      required this.valueCoffe,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF212325),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset(coffeImage),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              nameCoffe,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              descriptionCoffe,
              style: TextStyle(
                color: Colors.white60,
                fontSize: 16,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                valueCoffe,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFE57734),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Expanded(
                  child: Center(
                    child: Icon(Icons.favorite),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
