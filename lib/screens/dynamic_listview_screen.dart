import 'package:flutter/material.dart';

import '../data_store/data_store.dart';
import '../models/doctor.dart';
import '../widgets/doctor_row.dart';

class DynamicListviewScreen extends StatelessWidget {
  const DynamicListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> friends = [
      'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan',
      'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan',
      'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan',
      'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan', 'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan',
      'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan', 'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan',
      'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan',
      'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan',
      'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan',
      'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan', 'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan',
      'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan', 'Ali',
      'Zia',
      'Bilal',
      'Khan',
      'Gia',
      'Hina',
      'Musa',
      'Rizwan',


    ];



    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Builder'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
          itemCount: doctors.length,

          itemBuilder: (BuildContext context, int index){

            Doctor doctor = doctors[index];

            return DoctorRow(doctor: doctor);
          })
    );
  }
}


