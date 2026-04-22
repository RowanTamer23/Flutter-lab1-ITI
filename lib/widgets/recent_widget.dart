import 'package:flutter/material.dart';

class RecentWidget extends StatelessWidget {
  const RecentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 20),
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(119, 119, 119, 0.1),
              border: Border.all(
                color: Color.fromRGBO(119, 119, 119, 1),
                width: 0.25,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.receipt, color: Color(0xffF97316)),
                SizedBox(height: 10),
                Text("Report", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(119, 119, 119, 0.1),
              border: Border.all(
                color: Color.fromRGBO(119, 119, 119, 1),
                width: 0.25,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.people, color: Colors.blue),
                SizedBox(height: 10),
                Text("Users", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(119, 119, 119, 0.1),
              border: Border.all(
                color: Color.fromRGBO(119, 119, 119, 1),
                width: 0.25,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings, color: Colors.blueGrey),
                SizedBox(height: 10),
                Text("Settings", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
