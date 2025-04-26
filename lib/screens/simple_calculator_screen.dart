
import 'package:flutter/material.dart';

class SimpleCalculatorScreen extends StatefulWidget {
  const SimpleCalculatorScreen({super.key});

  @override
  State<SimpleCalculatorScreen> createState() => _SimpleCalculatorScreenState();
}

class _SimpleCalculatorScreenState extends State<SimpleCalculatorScreen> {

  TextEditingController firstController = TextEditingController();
  var lastController = TextEditingController();

  var firstTFFocusNode = FocusNode();

  String result = 'RESULTTTTT';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcu'),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 20,
            children: [
              TextField(
                focusNode: firstTFFocusNode,
                keyboardType: TextInputType.number,
                controller: firstController,
                decoration: InputDecoration(
                    hintText: 'First Number',
                    border: OutlineInputBorder(),
                    labelText: 'First Number',
                    prefixIcon: Icon(Icons.person)
                ),
              ),

              TextField(
                keyboardType: TextInputType.number,

                controller: lastController,

                decoration: InputDecoration(
                    hintText: 'Second Number',
                    border: OutlineInputBorder(),
                    labelText: 'Second Number',

                    prefixIcon: Icon(Icons.person)
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    String firstNumber = firstController.text.trim();
                    String secondNumber = lastController.text.trim();

                    if( firstNumber.isEmpty){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(
                        SnackBar(content: Text('Please provide first number'))
                      );

                      return;
                    }

                    if( secondNumber.isEmpty){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(
                          SnackBar(content: Text('Please provide second number'))
                      );
                      return;
                    }

                    // control
                    int num1 = int.parse(firstNumber);
                    int num2 = int.parse(secondNumber);

                    int sum = num1 + num2;
                    setState(() {
                      result = 'RESULT: $sum';
                    });


                  }, child: Text('+')),
                  ElevatedButton(onPressed: (){}, child: Text('-')),
                  ElevatedButton(onPressed: (){}, child: Text('*')),
                  ElevatedButton(onPressed: (){}, child: Text('/')),
                ],
              ),
              
              ElevatedButton(onPressed: (){

                firstController.clear();
                lastController.text = '';

                setState(() {
                  result = '';
                });

                firstTFFocusNode.requestFocus();

              }, child: Text("CLEAR")),

              Text(result)
            ],
          ),
        ),
      ),
    );
  }
}
