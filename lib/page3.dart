import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: EdgeInsets.all(16.0),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/core.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20,),
            const Text(
              'Chocolatos App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              'Mari kita lihat saja langsung produk produknya pada halaman berikutnya',
              style: TextStyle(
                fontSize: 14
              ),
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
              child: const Text(
                'Next',
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                
                ),
              ),

              onPressed: () {
                Navigator.of(context).pushNamed('/ListPage');
              },
            ),
          ],
        ),
      ),
      )
    );
  }
}