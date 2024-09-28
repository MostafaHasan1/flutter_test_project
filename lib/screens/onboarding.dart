import 'package:flutter/material.dart';
import 'package:test_app/screens/home.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  // First Container (Background)
                  Container(
                    width: double.infinity,
                    height: 600,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/Texture.png'),
                          fit: BoxFit.cover),
                      color: Color(0xff4C4DDC),
                    ),
                    child: const Image(image: AssetImage('assets/img/Doctor 1.png')),
                  ),
                ],
              ),
              // Second Container (Overlapping)
      Positioned(
        top: 500, // Adjust the top value to control overlap
        left: 0,
        right: 0,
        child: Container(
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
      ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Center vertically in the container
            crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally in the const container
            children: [
 const              SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.only(left: 50.0, right: 50.0),
                child: Text(
                  'More Comfortable Chat With The Doctor', // Add your desired text
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24, // Text size
                    fontWeight: FontWeight.bold, // Bold text
                    color: Colors.black, // Text color
                  ),
                  textAlign: TextAlign.center, // Align text to const the center
                ),
              ),
              const SizedBox(height: 5), // Adds some spacing between the texts
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Book an appointment with doctor. Chat with doctor via appointment letter and get consultation.',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16, // Text size
                    color: Colors.grey, // Text color
                  ),
                  textAlign: TextAlign.center, // Align text to the center
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)) ,
                    padding: const EdgeInsets.symmetric(horizontal: 130.0, vertical: 10.0),
                    foregroundColor: Colors.white, backgroundColor: const Color(0xff4C4DDC), // Text color
                  ),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>const Home()));
                  },
                  child: const Text(
                      'Get Started',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),

      ],
          ),
        ],
      ),
    );

  }
}

int hexColor(String color){
  String newColor = '0xff$color';
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}