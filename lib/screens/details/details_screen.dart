import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shopapp/models/product_data.dart';
import 'package:shopapp/screens/details/components/body.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: product.color,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                "assets/icons/search.svg",
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(
                "assets/icons/cart.svg",
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(
            width: kDefaultPaddin / 2,
          )
        ],
      ),
      backgroundColor: product.color,
      body: Body(product: product),
    );
  }
}
