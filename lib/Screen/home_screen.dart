import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color:Colors.blue,
              width: 50,
              height: 50,
            ),
          )
        )
      ),
    );
  }
}
