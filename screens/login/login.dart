import 'package:app_development/screens/home/home_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2A4BA0),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(50, 50, 200, 10),
            child: Text(
              'Welcome to Israr Ahmed Shopping Centre. Swipe for more detail',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 5, 200, 140),
            child: Text(
              'Here is something for you and you can buy anything, First Screen',
              style: TextStyle(
                color: Colors.white38,
              ),
            ),
          ),
          SizedBox(),
          Image.network(
            'https://cdn.pixabay.com/photo/2021/05/27/18/55/woman-6289052_640.png',
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          SizedBox(
            height: 110,
          ),
          FractionallySizedBox(
            widthFactor:
                0.7, // Set the width factor to control the button's width
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeView(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.all(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
