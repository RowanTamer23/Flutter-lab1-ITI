import 'package:flutter/material.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(119, 119, 119, 0.1),
            border: Border.all(
              color: Color.fromRGBO(119, 119, 119, 1),
              width: 0.25,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(Icons.mail, color: Colors.blueGrey),
              SizedBox(width: 10),
              Text("Email Address", style: TextStyle(color: Colors.blueGrey)),
              Spacer(),
              Icon(Icons.arrow_forward_ios, color: Colors.blueGrey),
            ],
          ),
        ),
        SizedBox(height: 10),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(119, 119, 119, 0.1),
            border: Border.all(
              color: Color.fromRGBO(119, 119, 119, 1),
              width: 0.25,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(Icons.lock, color: Colors.blueGrey),
              SizedBox(width: 10),
              Text("Change Password", style: TextStyle(color: Colors.blueGrey)),
              Spacer(),
              Icon(Icons.arrow_forward_ios, color: Colors.blueGrey),
            ],
          ),
        ),
      ],
    );
  }
}
