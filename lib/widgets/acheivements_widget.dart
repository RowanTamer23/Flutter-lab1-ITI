import 'package:flutter/material.dart';

class Acheivements extends StatelessWidget {
  const Acheivements({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              "10+",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text(
              "Projects",
              style: TextStyle(fontSize: 14, color: Colors.blueGrey),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "2+",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text(
              "Years of experience",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.blueGrey),
            ),
          ],
        ),

        Column(
          children: [
            Text(
              "100%",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text(
              "Awesome",
              style: TextStyle(fontSize: 14, color: Colors.blueGrey),
            ),
          ],
        ),
      ],
    );
  }
}
