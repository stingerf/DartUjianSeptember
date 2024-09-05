import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            const Center (
               child: Text(
              'Chocolatos adalah merek camilan wafer stick yang terkenal dengan isian cokelatnya yang kaya dan lezat. Produk ini hadir dalam berbagai varian rasa, seperti cokelat klasik, matcha, dan keju. Chocolatos dikemas dalam bentuk stik renyah yang panjang, memberikan sensasi makan yang praktis dan nikmat.',
              style: TextStyle(
                fontSize: 14
              ),
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
                Navigator.of(context).pushNamed('/page2');
              },
            ),
          ],
        ),
      ),
      ) 
    );
  }
}