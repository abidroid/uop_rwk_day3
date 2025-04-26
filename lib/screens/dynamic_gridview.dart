import 'package:flutter/material.dart';
import 'package:uop_rwk_day3/models/doctor.dart';

import '../data_store/data_store.dart';

class DynamicGridview extends StatelessWidget {
  const DynamicGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic GridView'),
        backgroundColor: Colors.teal,
      ),

      body: GridView.builder(
        itemCount: doctors.length,

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 300,
        ),
        itemBuilder: (BuildContext context, int index) {

          Doctor doctor = doctors[index];

          return Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      doctor.photo,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Text(doctor.name),
                  Text(doctor.spe),
                  Text(doctor.fee.toString()),
                  Text(doctor.clinicAddress)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
