import 'package:bigproject/model/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> bottomNavi = ["Menu", "My Cart", "Deals", "Notifications"];
List<String> payment = [
  "Credit Card",
  "Mobile Banking",
  "Bank Transfer",
  "Gopay"
];

class Buyer {
  Icon iconbuy;
  String buy;

  Buyer({
    required this.iconbuy,
    required this.buy,
  });
}

List<Buyer> buyer = [
  Buyer(
    iconbuy: Icon(Icons.reviews_outlined, color: ikon),
    buy: "Reviews",
  ),
  Buyer(
    iconbuy: Icon(Icons.question_answer_outlined, color: ikon),
    buy: "Discussions",
  ),
  Buyer(
    iconbuy: Icon(
      Icons.report_problem_outlined,
      color: ikon,
    ),
    buy: "Complaints",
  )
];

List<Icon> buy = [
  Icon(Icons.reviews_outlined),
  Icon(Icons.question_answer_outlined),
  Icon(Icons.report_problem_outlined)
];
List<String> buyers = ["Reviews", "Discussions", "Complaints"];

class Product {
  String image;
  String title;
  String subtitle;
  String cart;
  String price;

  Product(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.cart,
      required this.price});
}

List<Product> product = [
  Product(
      image: "images/bukusatu.png",
      title: "Surprise Book Box",
      subtitle: "Paperback & Hard Cover",
      cart: "1kg, 2 - 3 pcs",
      price: "\$1.99"),
  Product(
      image: "images/bukudua.png",
      title: "The Kinfolk Table",
      subtitle: "Paperback",
      cart: "1kg, 1 pcs",
      price: "\$1.99"),
  Product(
      image: "images/bukutiga.png",
      title: "A Book Full of Hope",
      subtitle: "Hardcover",
      cart: "1kg, 2 - 3 pcs",
      price: "\$2.99"),
  Product(
      image: "images/bukuempat.png",
      title: "Milk and Honey by Rupi Kaur",
      subtitle: "Paperback",
      cart: "1kg, 2 - 3 pcs",
      price: "\$1.99"),
  Product(
      image: "images/bukusatu.png",
      title: "Surprise Book Box",
      subtitle: "Paperback & Hard Cover",
      cart: "1kg, 2 - 3 pcs",
      price: "\$1.99"),
  Product(
      image: "images/bukudua.png",
      title: "The Kinfolk Table",
      subtitle: "Paperback",
      cart: "1kg, 2 - 3 pcs",
      price: "\$1.99")
];
