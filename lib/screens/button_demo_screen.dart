import 'package:flutter/material.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        backgroundColor: Colors.teal,
      ),

      body: Column(
        spacing: 20,
        children: [
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),

              onPressed: () {

              },
              child: Text('LOGIN'),
            ),
          ),

          TextButton(
            onPressed: () {},
            child: Text("Not Registered yet? SIGN UP"),
          ),

          OutlinedButton(
            onPressed: () {},
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.star), Text("RATE US")],
            ),
          ),

          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),

          InkWell(
              onTap: (){
                print("Text clicked");
              },
              child: Text('Click Me')),


          GestureDetector(
              onTap: (){
                print('too clickec');
              },
              child: Text("Click Me too")),
        ],
      ),
    );
  }
}

