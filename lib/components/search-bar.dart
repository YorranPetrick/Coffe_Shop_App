import 'package:flutter/material.dart';

class SearchBarComponents extends StatelessWidget {
  const SearchBarComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Variavel para pegar o valor do FocusNode do SearchBar
    final FocusNode focusNode = FocusNode();
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: SizedBox(
          width: 310,
          child: SearchBar(
            leading: const Icon(Icons.search),
            hintText: 'Find your Coffe',
            hintStyle: MaterialStateProperty.all(
              TextStyle(
                color: focusNode.hasFocus
                    ? const Color(0xffabd0e6)
                    : const Color(0xff5c6266),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 50, 54, 56),
            ),
          ),
        ),
      ),
    );
  }
}
