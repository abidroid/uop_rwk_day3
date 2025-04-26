
import 'package:flutter/material.dart';

class InputDemoScreen extends StatefulWidget {
  const InputDemoScreen({super.key});

  @override
  State<InputDemoScreen> createState() => _InputDemoScreenState();
}

class _InputDemoScreenState extends State<InputDemoScreen> {

  String fullName = "Fullname: ";
  TextEditingController firstController = TextEditingController();
  var lastController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(

          children: [
            TextField(
              controller: firstController,
              decoration: InputDecoration(
                hintText: 'First Name',
                border: OutlineInputBorder(),
                labelText: 'First Name',
                prefixIcon: Icon(Icons.person)
              ),
            ),

            SizedBox(height: 16,),
            TextField(
              controller: lastController,

              decoration: InputDecoration(
                  hintText: 'Last Name',
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                  prefixIcon: Icon(Icons.person)
              ),
            ),

            SizedBox(height: 16,),

            ElevatedButton(onPressed: (){

              String firstName = firstController.text.trim();
              String lastName = lastController.text.trim();

              setState(() {
                fullName = "$firstName $lastName";
              });

            }, child: const Text('Combine')),
            SizedBox(height: 16,),

            Text(fullName),
          ],
        ),
      ),
    );
  }
}
