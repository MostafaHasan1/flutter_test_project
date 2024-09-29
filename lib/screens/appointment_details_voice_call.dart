import 'package:flutter/material.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/screens/my_appointment_voice_call_run.dart';

class AppointmentDetailsVoiceCall extends StatelessWidget {
  const AppointmentDetailsVoiceCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.transparent,
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  BackButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));
                    },
                  ),
                  const Text(
                    "My Appointment",
                    style: TextStyle(fontFamily:"Inter", fontWeight: FontWeight.bold, fontSize: 20 ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
              child: Image.asset('assets/img/jennyWilson.png')
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyAppointmentVoiceCallRun()));
        },
        backgroundColor: const Color(0xff4C4DDC),
        label: const Text('Voice Call (14.30 - 15.00 PM', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),),
        icon: const Icon(Icons.call),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
    );
  }
}
