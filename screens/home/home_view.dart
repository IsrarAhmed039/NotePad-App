import 'package:app_development/widgets/screen_first.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
              'Here is something for you and you can buy anything, Second Screen',
              style: TextStyle(
                color: Colors.white38,
              ),
            ),
          ),
          SizedBox(),
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNV5y0pm4AEVoxE6vqjNOspmyztBcj3He2Vg&usqp=CAU',
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
                    builder: (context) => ScreenFirst(),
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
