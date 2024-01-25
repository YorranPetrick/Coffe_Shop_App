import 'package:flutter/material.dart';

import '../reusable_widgets/back_button.dart';

class ImageBackgroundAppBar extends StatelessWidget {
  final String imageCoffe;

  const ImageBackgroundAppBar({required this.imageCoffe, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BackkButton(),
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
