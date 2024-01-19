import 'package:flutter/material.dart';

class CoffeVarieties extends StatefulWidget {
  const CoffeVarieties({Key? key}) : super(key: key);

  @override
  State<CoffeVarieties> createState() => _CoffeVarietiesState();
}

//SingleTickerProviderStateMixin serve para o vsync saber onde pegar
//o valor para a sua sincronização

class _CoffeVarietiesState extends State<CoffeVarieties>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TabController tabController = TabController(length: 4, vsync: this);

    return TabBar(
      controller: tabController,
      unselectedLabelColor: const Color(0xff5c6266),
      isScrollable: true,
      labelColor: const Color(0xFFE57734),
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2,
          color: Color(0xFFE57734),
        ),
      ),
      tabs: [
        const Tab(
          text: 'Hot Coffe',
        ),
        const Tab(
          text: 'Cold Coffe',
        ),
        const Tab(
          text: 'Capuchino',
        ),
        const Tab(
          text: 'Americano',
        ),
      ],
    );
  }
}
