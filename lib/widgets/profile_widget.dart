import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color.fromRGBO(10, 132, 185, 0.247),
            border: Border.all(color: Colors.blue, width: 3),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/profile.jpeg',
              width: 50,
              height: 50,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Rowan Tamer",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        Text(
          "Flutter developer",
          style: TextStyle(fontSize: 16, color: Colors.blueGrey),
        ),
      ],
    );
  }
}
