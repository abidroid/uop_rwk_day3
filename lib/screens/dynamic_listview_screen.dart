import 'package:flutter/material.dart';

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

     List<Doctor> doctors = [

      Doctor(name: 'Muhammad Ali', spe: 'ENT', clinicAddress: 'Phase 2 Bahria Town', fee: 2000, photo: 'assets/images/ali.jpeg'),
      Doctor(name: 'Bano Qudsia', spe: 'Psychiatrist', clinicAddress: 'F7 Islamabad', fee: 2500, photo: 'assets/images/bano.jpeg'),
      Doctor(name: 'Bilal Khan', spe: 'Cardiologist', clinicAddress: 'KMC Peshawar', fee: 2000, photo: 'assets/images/bilal.jpeg'),
      Doctor(name: 'Fawad Jan', spe: 'General Physician', clinicAddress: 'Phase 8 Bahria Town', fee: 3000, photo: 'assets/images/fawad.jpeg'),
      Doctor(name: 'Fozia Waheed', spe: 'Gynaecologist', clinicAddress: 'Baldia Town Karachi', fee: 4000, photo: 'assets/images/fozia.jpeg'),
      Doctor(name: 'Hina Pervaiz', spe: 'Gastroenterologist', clinicAddress: 'Phase 2 Bahria Town', fee: 2000, photo: 'assets/images/hina.jpeg'),
      Doctor(name: 'Jin Huang', spe: 'Physiotherapist', clinicAddress: 'China Town', fee: 2000, photo: 'assets/images/jin.jpeg'),
      Doctor(name: 'Riaz Awan', spe: 'ENT', clinicAddress: 'Abbottabad Sadar', fee: 2000, photo: 'assets/images/riaz.jpeg'),

       Doctor(name: 'Muhammad Ali', spe: 'ENT', clinicAddress: 'Phase 2 Bahria Town', fee: 2000, photo: 'assets/images/ali.jpeg'),
       Doctor(name: 'Bano Qudsia', spe: 'Psychiatrist', clinicAddress: 'F7 Islamabad', fee: 2500, photo: 'assets/images/bano.jpeg'),
       Doctor(name: 'Bilal Khan', spe: 'Cardiologist', clinicAddress: 'KMC Peshawar', fee: 2000, photo: 'assets/images/bilal.jpeg'),
       Doctor(name: 'Fawad Jan', spe: 'General Physician', clinicAddress: 'Phase 8 Bahria Town', fee: 3000, photo: 'assets/images/fawad.jpeg'),
       Doctor(name: 'Fozia Waheed', spe: 'Gynaecologist', clinicAddress: 'Baldia Town Karachi', fee: 4000, photo: 'assets/images/fozia.jpeg'),
       Doctor(name: 'Hina Pervaiz', spe: 'Gastroenterologist', clinicAddress: 'Phase 2 Bahria Town', fee: 2000, photo: 'assets/images/hina.jpeg'),
       Doctor(name: 'Jin Huang', spe: 'Physiotherapist', clinicAddress: 'China Town', fee: 2000, photo: 'assets/images/jin.jpeg'),
       Doctor(name: 'Riaz Awan', spe: 'ENT', clinicAddress: 'Abbottabad Sadar', fee: 2000, photo: 'assets/images/riaz.jpeg'),

       Doctor(name: 'Muhammad Ali', spe: 'ENT', clinicAddress: 'Phase 2 Bahria Town', fee: 2000, photo: 'assets/images/ali.jpeg'),
       Doctor(name: 'Bano Qudsia', spe: 'Psychiatrist', clinicAddress: 'F7 Islamabad', fee: 2500, photo: 'assets/images/bano.jpeg'),
       Doctor(name: 'Bilal Khan', spe: 'Cardiologist', clinicAddress: 'KMC Peshawar', fee: 2000, photo: 'assets/images/bilal.jpeg'),
       Doctor(name: 'Fawad Jan', spe: 'General Physician', clinicAddress: 'Phase 8 Bahria Town', fee: 3000, photo: 'assets/images/fawad.jpeg'),
       Doctor(name: 'Fozia Waheed', spe: 'Gynaecologist', clinicAddress: 'Baldia Town Karachi', fee: 4000, photo: 'assets/images/fozia.jpeg'),
       Doctor(name: 'Hina Pervaiz', spe: 'Gastroenterologist', clinicAddress: 'Phase 2 Bahria Town', fee: 2000, photo: 'assets/images/hina.jpeg'),
       Doctor(name: 'Jin Huang', spe: 'Physiotherapist', clinicAddress: 'China Town', fee: 2000, photo: 'assets/images/jin.jpeg'),
       Doctor(name: 'Riaz Awan', spe: 'ENT', clinicAddress: 'Abbottabad Sadar', fee: 2000, photo: 'assets/images/riaz.jpeg'),

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


