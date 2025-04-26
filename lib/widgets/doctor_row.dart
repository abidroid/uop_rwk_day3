import 'package:flutter/material.dart';

import '../models/doctor.dart';

class DoctorRow extends StatelessWidget {
  const DoctorRow({
    super.key,
    required this.doctor,
  });

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Card(
        color: Colors.teal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            spacing: 16,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16,),
                child: Image.asset(doctor.photo,
                  width: 100, height: 100,
                  fit: BoxFit.cover,
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${doctor.name}', style: TextStyle(fontSize: 18),),
                  Text('${doctor.spe}', style: TextStyle(fontSize: 18),),
                  Text('${doctor.fee}', style: TextStyle(fontSize: 18),),
                  Text('${doctor.clinicAddress}', style: TextStyle(fontSize: 18),),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}