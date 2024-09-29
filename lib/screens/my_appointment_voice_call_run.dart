import 'package:flutter/material.dart';

import 'appointment_details_voice_call.dart';

class MyAppointmentVoiceCallRun extends StatelessWidget {
  const MyAppointmentVoiceCallRun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/img/Image Background.png"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AppointmentDetailsVoiceCall()));
        },
        child: const Icon(Icons.call),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // This keeps the button at the bottom center
    );
  }
}
