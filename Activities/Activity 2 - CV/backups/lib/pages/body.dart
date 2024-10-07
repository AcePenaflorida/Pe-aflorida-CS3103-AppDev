import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Image
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 0),
          height: 170,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset(
                'lib/assets/formal_pic.jpg',
                fit: BoxFit.cover,
                width: 170,
                height: 170,
              ),
            ),
          ),
        ),

        // Info
        Center(
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              const Text(
                'Ace Peñaflorida',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500,),
              ),

              const SizedBox(height: 8.0),
              // Phone Number
              Text(
                '+63 991 939 4735',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),

              const SizedBox(height: 8.0),
              // Email
              Text(
                'ace.g.penaflorida@gmail.com',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
            ],
          ),
        ),

        // Professional Goal
        Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 150,
            width: 360,
            color: Colors.white,
            child: const Text(
              "Professional Goal",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400,),
            ),
          ),
        ),
      ],
    );
  }
}
