import 'package:flutter/material.dart';

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
              Icons.notifications,
              size: 32,
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
    );
  }
}
