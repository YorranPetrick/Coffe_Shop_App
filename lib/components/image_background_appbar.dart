import 'package:flutter/material.dart';

class ImageBackgroundAppBar extends StatelessWidget {
  final String imageCoffe;

  const ImageBackgroundAppBar({required this.imageCoffe, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 5,
            left: 5,
          ),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          //Criação do botão para retornar a pagina Home
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFE57734),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 50),
          width: double.infinity,
          height: 300,
          child: Image.asset(
            imageCoffe,
          ),
        ),
      ],
    );
  }
}
