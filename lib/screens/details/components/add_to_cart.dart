import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/product_data.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color!,
              ),
            ),
            child: IconButton(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  product.color!,
                  BlendMode.srcIn,
                ),
                child: SvgPicture.asset("assets/icons/add_to_cart.svg"),
              ),
              onPressed: () {},
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(product.color),
              fixedSize: MaterialStateProperty.all(
                const Size(280, 50),
              ),
            ),
            onPressed: () => {},
            child: const Text(
              "BUY NOW",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
