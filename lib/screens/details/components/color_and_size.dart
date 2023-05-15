import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product_data.dart';

class ColorsAndSize extends StatelessWidget {
  const ColorsAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Color",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ),
            Row(children: const <Widget>[
              ColorDot(color: Color(0xFF356c95), isSelected: true),
              ColorDot(color: Color.fromRGBO(29, 246, 145, 1)),
              ColorDot(color: Color.fromRGBO(238, 230, 7, 1)),
            ]),
          ],
        ),
        const SizedBox(
          child: Padding(padding: EdgeInsets.only(right: 120)),
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "Size\n",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
          ),
          TextSpan(
            text: "${product.size} cm",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
          ),
        ]))
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  // by deafult isn't selected
  const ColorDot({super.key, required this.color, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? color : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
