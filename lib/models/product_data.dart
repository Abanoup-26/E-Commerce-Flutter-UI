import 'package:flutter/material.dart';

class Product {
  final String? image, title, description;
  final int? price;
  final int? size, id;
  final Color? color;

  Product(
      {this.image,
      this.title,
      this.description,
      this.price,
      this.size,
      this.id,
      this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 985,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 468,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 856,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 260,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 500,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: const Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Expertly designed with a spacious interior that can hold all your essentials, while its sleek and modern exterior gives it a contemporary and sophisticated look";
