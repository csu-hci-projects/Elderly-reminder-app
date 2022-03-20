import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../CardsWidget.dart';

class DairyState extends StatefulWidget {
  String text = "";

  @override
  _Dairy createState() => _Dairy();
}

class _Dairy extends State<DairyState> {
  Widget _background() => Container(
        //background
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      );

  @override
  Widget build(BuildContext context) {
    const _cartHeight = 100.0;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              });
        }),
        title: const Text("Dairy"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          cardsWidget('assets/images/milk.png', 'Milk'),
          cardsWidget('assets/images/milk.png', 'Milk'),
          cardsWidget('assets/images/milk.png', 'Milk'),
        ],
      ),
    );
  }
}
