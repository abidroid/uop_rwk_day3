
import 'package:flutter/material.dart';

class InputDemoScreen extends StatefulWidget {
  const InputDemoScreen({super.key});

  @override
  State<InputDemoScreen> createState() => _InputDemoScreenState();
}

class _InputDemoScreenState extends State<InputDemoScreen> {
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

              decoration: InputDecoration(
                hintText: 'Full Name',
                border: OutlineInputBorder(),
                labelText: 'Full Name',
                prefixIcon: Icon(Icons.person)
              ),
            ),

            SizedBox(height: 16,),
            TextField(
              keyboardType: TextInputType.phone,
              maxLength: 11,
              decoration: InputDecoration(
                  hintText: 'Mobile Number',
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                  prefixIcon: Icon(Icons.phone)
              ),
            ),

            SizedBox(height: 16,),
            TextField(
              obscureText: true,
              obscuringCharacter: '#',
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),

            SizedBox(height: 16,),

            TextField(
              maxLines: 6,
              decoration: InputDecoration(
                  hintText: 'Remarks',
                  border: OutlineInputBorder(),
                  labelText: 'Remarks',

              ),
            ),
          ],
        ),
      ),
    );
  }
}
