import 'package:flutter/material.dart';
import 'package:test_app/screens/appointment_details_voice_call.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            // padding: EdgeInsets.all(16),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/Texture.png'),
                  fit: BoxFit.cover),
              color: Color(0xff4C4DDC),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Padding(
                   padding: EdgeInsets.only(top: 20),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/img/avatar_img.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello, Welcome",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Inter",
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4,),
                            Text(
                              "Savannah Nguyen",
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 30,bottom: 10),
                        child: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.notifications, color: Colors.white, size: 30,)
                        ),
                      )
                    ],
                   ),
                 ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade500, width: 1.5),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search_rounded, color: Colors.grey),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Doctor. . .',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            onChanged: (value) {
                              // Handle search logic here
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),//1st container done
          //2nd container
          Container(
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'All',
                    style: TextStyle(fontSize: 18, color: Colors.grey,),
                  ),
                  Text(
                    'Fever',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Text(
                    'Cough',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),//2nd container done
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
            child: Container(
              color: Colors.transparent,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favourite Doctor",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "Inter",color: Colors.black),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 16, fontFamily: "Inter", color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),//3rd container
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/img/drabir.png"),
                // Image.asset("assets/img/drwarren.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
            child: Container(
              color: Colors.transparent,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Doctor",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "Inter",color: Colors.black),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 16, fontFamily: "Inter", color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),//4th container
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AppointmentDetailsVoiceCall()));
            },
            child: Image.asset("assets/img/jenny_wilson.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/img/home-2.png"),
              Image.asset("assets/img/calendar.png")
            ],
          ),//5th container
        ],
      )
    );
  }
}
// const Color(0xff4C4DDC),