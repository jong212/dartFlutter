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
            padding: EdgeInsets.only(
              top: 10,
              left: 20,
              bottom: 30,
            ),
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
