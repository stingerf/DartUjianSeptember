
import 'package:first_skl_dart/list.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailProdct extends StatelessWidget {
  DetailProdct({super.key});

  List<Product> myProductList = [
    Product(
        name: 'Chocolatos Dark Choco',
        price: '200.000',
        imageURL: 'images/dark.png'),
    Product(
        name: 'Chocolatos Vanila',
        price: '400.900',
        imageURL: 'images/vanila.png'),
    Product(
        name: 'Chocolatos Coconut',
        price: '10.999',
        imageURL: 'images/core.png'),
    Product(
        name: 'Chocolatos Drink Choco',
        price: '500',
        imageURL: 'images/drink.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shop Product List',
          style: TextStyle(color: Colors.blueAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            // childAspectRatio: 1/3 = buat jarak per kotaknya
          ),
          itemCount: myProductList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/CheckPage',
                    arguments: myProductList[index]);
              },
              child: ProductItem(product: myProductList[index],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) {
            return ListPage();
          }));
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.arrow_left,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              '${product.imageURL}',
              height: 1000,
              width: 1000,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              '${product.name}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Rp ${product.price}',
              style: const TextStyle(color: Colors.red),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String imageURL;

  Product({required this.name, required this.price, required this.imageURL});
}
