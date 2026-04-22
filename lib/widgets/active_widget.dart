import 'package:flutter/material.dart';

class ActiveWidget extends StatelessWidget {
  const ActiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        TextButton(
          style: ButtonStyle(
            side: WidgetStateProperty.all(BorderSide(color: Color(0xff10B981))),
            backgroundColor: WidgetStateProperty.all(
              Color.fromRGBO(10, 185, 129, 0.25),
            ),
          ),
          onPressed: () {},
          child: Text('online', style: TextStyle(color: Color(0xff10B981))),
        ),
        SizedBox(width: 10),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            side: WidgetStateProperty.all(BorderSide(color: Color(0xffF97316))),
            backgroundColor: WidgetStateProperty.all(
              Color.fromRGBO(249, 115, 19, 0.25),
            ),
          ),
          child: const Text(
            'waiting',
            style: TextStyle(color: Color(0xffF97316)),
          ),
        ),
        SizedBox(width: 10),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            side: WidgetStateProperty.all(BorderSide(color: Colors.grey)),
            backgroundColor: WidgetStateProperty.all(
              Color.fromRGBO(119, 119, 119, 0.25),
            ),
          ),

          child: Text('offline', style: TextStyle(color: Colors.grey)),
        ),
        SizedBox(width: 10),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            side: WidgetStateProperty.all(BorderSide(color: Colors.blue)),
            backgroundColor: WidgetStateProperty.all(
              Color.fromRGBO(10, 132, 185, 0.247),
            ),
          ),
          child: Text('Admin', style: TextStyle(color: Colors.blue)),
        ),
      ],
    );
  }
}
