import 'package:flutter/material.dart';

class SimpleGridview extends StatelessWidget {
  const SimpleGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        backgroundColor: Colors.teal,
      ),

      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.pink),
          Container(color: Colors.amber),
          Container(color: Colors.cyan),
          Container(color: Colors.brown),
          Container(color: Colors.purple),
          Container(color: Colors.orange),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.pink),
          Container(color: Colors.amber),
          Container(color: Colors.cyan),
          Container(color: Colors.brown),
          Container(color: Colors.purple),
          Container(color: Colors.orange),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.pink),
          Container(color: Colors.amber),
          Container(color: Colors.cyan),
          Container(color: Colors.brown),
          Container(color: Colors.purple),
          Container(color: Colors.orange),
        ],
      ),
    );
  }
}
