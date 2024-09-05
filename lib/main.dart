import 'package:first_skl_dart/check.dart';
import 'package:first_skl_dart/list.dart';
import 'package:first_skl_dart/list2.dart';
import 'package:first_skl_dart/page1.dart';
import 'package:first_skl_dart/page2.dart';
import 'package:first_skl_dart/page3.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/HomePage',
      routes: {
        '/HomePage':(context) =>const HomePage(),
        '/page2':(context) =>const Page2(),
        '/page3':(context) =>const Page3(),
        '/ListPage':(context) => ListPage(),
        '/DetailPage':(context) => DetailProdct(),
        '/CheckPage':(context) => const CheckPage(),
      },
    );
  }
}