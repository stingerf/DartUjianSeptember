import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});

  final List<Product> products = [
    Product(
      name: 'Chocolatos', 
      price: '150',
      imageURL: 'images/dark.png',
    ),
    Product(
      name: 'Mini Chocolatos',    
      price: '200',
      imageURL: 'images/vanila.png',
    ),
    Product(
      name: 'Chocolatos Drink',
      price: '320',      
      imageURL: 'images/drink.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length, 
      itemBuilder: (context, index) {
        final product = products[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(product.imageURL), // Use AssetImage for local images
          ),
          title: Text(product.name), // Use 'name' instead of 'email'
        );
      },
    );
  }
}

class Product {
  final String name;
  final String price;
  final String imageURL;

  Product({required this.name, required this.price ,required this.imageURL});
}
