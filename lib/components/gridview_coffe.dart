import 'package:flutter/material.dart';

import '../reusable_widgets/card_gridview.dart';

class GradViewCoffe extends StatelessWidget {
  const GradViewCoffe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          //Razão entre largura e altura dos childs do GridView
          childAspectRatio: (50 / 80),
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: [
            const CardGridView(
              coffeeImage: 'assets/images/Latte.png',
              nameCoffee: 'Latte',
              descriptionCoffee: 'Volume: 200ml',
              valueCoffee: '30',
            ),
            const CardGridView(
              coffeeImage: 'assets/images/Espresso.png',
              nameCoffee: 'Espresso',
              descriptionCoffee: 'Volume: 150ml',
              valueCoffee: '25',
            ),
            const CardGridView(
              coffeeImage: 'assets/images/Black Coffee.png',
              nameCoffee: 'Black Coffee',
              descriptionCoffee: 'Volume: 150ml',
              valueCoffee: '15',
            ),
            const CardGridView(
              coffeeImage: 'assets/images/Cold Coffee.png',
              nameCoffee: 'Cold Coffee',
              descriptionCoffee: 'Volume: 600ml',
              valueCoffee: '20',
            ),
          ],
        ),
      ),
    );
  }
}
