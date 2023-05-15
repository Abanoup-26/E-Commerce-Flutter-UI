import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product_data.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        "${product.description}",
        style: const TextStyle(
            color: kTextColor, fontWeight: FontWeight.w400, fontSize: 16),
      ),
    );
  }
}
