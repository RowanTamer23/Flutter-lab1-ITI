import 'package:flutter/material.dart';
import 'package:lab1/Screens/Profile_screen.dart';
import 'package:lab1/widgets/active_widget.dart';
import 'package:lab1/widgets/recent_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F172A),
      appBar: AppBar(
        backgroundColor: Color(0xFF0F172A),
        leading: IconButton(
          icon: const Icon(Icons.person, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          },
        ),
        title: const Text('Admin Panel', style: TextStyle(color: Colors.white)),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(color: Colors.blueGrey, thickness: 0.5),
          SizedBox(height: 20),
          Text(
            "Active accounts",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          ActiveWidget(),
          SizedBox(height: 40),
          Text(
            "Recent transactions",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          RecentWidget(),
          SizedBox(height: 50),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 100,
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(119, 119, 119, 0.1),
                    border: Border.all(
                      color: Color.fromRGBO(119, 119, 119, 1),
                      width: 0.25,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.add_box, color: Colors.blueGrey),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order number #123456",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Done",
                      style: TextStyle(color: Color.fromRGBO(10, 185, 129, 1)),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(62, 10, 71, 185),
                    border: Border.all(color: Colors.blue, width: 0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.edit, color: Colors.blue, size: 20),
                ),
                SizedBox(width: 10),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 0, 0, 0.2),
                    border: Border.all(color: Colors.red, width: 0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.delete, color: Colors.red, size: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
