import 'package:flutter/material.dart';

import '../components/coffe_varieties.dart';
import '../components/gridview_coffe.dart';
import '../components/search-bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          child: Image.asset('assets/images/menu.png'),
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.shopping_cart,
              size: 32,
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Text(
            'It´s a Great day for Coffe',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      drawer: const Drawer(),
      body: const Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            SearchBarComponents(),
            SizedBox(height: 12),
            CoffeVarieties(),
            GradViewCoffe(),
          ],
        ),
      ),
    );
  }
}
