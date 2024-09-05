
import 'package:first_skl_dart/list2.dart';
import 'package:flutter/material.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product = 
      ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(product.imageURL),
            Padding(
              padding: EdgeInsets.all(16.0), 
              child: Text(
                product.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(16.0),
              child: Text(
                'Rp ${product.price}',
                style: TextStyle(
                  fontSize: 14,
                ),
              ) 
            ),
          ],
        ),
      ),
    );
  }
}