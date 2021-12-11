import 'package:flutter/material.dart';

class Product {
  final String image, title, descripcion;
  final int precio, tamanio, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.precio,
    required this.descripcion,
    required this.tamanio,
    required this.color,
  });
}


List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      precio: 234,
      tamanio: 12,
      descripcion: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      precio: 234,
      tamanio: 8,
      descripcion: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      precio: 234,
      tamanio: 10,
      descripcion: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      precio: 234,
      tamanio: 11,
      descripcion: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      precio: 234,
      tamanio: 12,
      descripcion: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    precio: 234,
    tamanio: 12,
    descripcion: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
