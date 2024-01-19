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
            CardGridView(
              coffeImage: 'assets/images/Latte.png',
              nameCoffe: 'Latte',
              descriptionCoffe: 'Best Coffe',
              valueCoffe: '\$ 30',
            ),
            CardGridView(
              coffeImage: 'assets/images/Espresso.png',
              nameCoffe: 'Espresso',
              descriptionCoffe: 'Best Coffe',
              valueCoffe: '\$ 25',
            ),
            CardGridView(
              coffeImage: 'assets/images/Black Coffee.png',
              nameCoffe: 'Black Coffee',
              descriptionCoffe: 'Best Coffe',
              valueCoffe: '\$ 15',
            ),
            CardGridView(
              coffeImage: 'assets/images/Cold Coffee.png',
              nameCoffe: 'Cold Coffee',
              descriptionCoffe: 'Best Coffe',
              valueCoffe: '\$ 20',
            ),
          ],
        ),
      ),
    );
  }
}
