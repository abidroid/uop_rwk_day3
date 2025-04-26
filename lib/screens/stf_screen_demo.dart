

import 'package:flutter/material.dart';

class StfScreenDemo extends StatefulWidget {
  const StfScreenDemo({super.key});

  @override
  State<StfScreenDemo> createState() => _StfScreenDemoState();
}

class _StfScreenDemoState extends State<StfScreenDemo> {

  // State
  // The data that is displayed on the screen

  // initial state
  String message = "Hello World";
  Color bgColor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    print('build executed');
    return Scaffold(

      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text("Dyanmic content"),
        backgroundColor: Colors.teal,
      ),

      body: Column(
        children: [
          Text(message),
          ElevatedButton(onPressed: (){

            message = 'UOP RWK';

            // calls build function
            setState(() {

            });
          }, child: const Text("Change")),


          ElevatedButton(onPressed: (){
            bgColor = Colors.red;
            setState(() {

            });

          }, child: Text('Red')),
          ElevatedButton(onPressed: (){
            setState(() {
              bgColor = Colors.green;

            });
          }, child: Text('Green')),
          ElevatedButton(onPressed: (){

            bgColor = Colors.blue;
            setState(() {

            });
          }, child: Text('Blue')),
        ],
      ),
    );
  }
}
