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
      title: "Maltin",
      precio: 234,
      tamanio: 12,
      descripcion: dummyText,
      image: "assets/images/img1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Agua Vital",
      precio: 234,
      tamanio: 8,
      descripcion: dummyText,
      image: "assets/images/img2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Coca Cola Sprite",
      precio: 234,
      tamanio: 10,
      descripcion: dummyText,
      image: "assets/images/img3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Red Bull",
      precio: 234,
      tamanio: 11,
      descripcion: dummyText,
      image: "assets/images/img4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Papel Report",
      precio: 234,
      tamanio: 12,
      descripcion: dummyText,
      image: "assets/images/img5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Papel Higienico Nacional",
    precio: 234,
    tamanio: 12,
    descripcion: dummyText,
    image: "assets/images/img6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
