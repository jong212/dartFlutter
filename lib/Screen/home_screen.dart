import 'package:flutter/material.dart';
import 'package:flt_proj/const/colors.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
                colors.map((e) =>
                    Container(
                      height: 50,
                      width: 50,
                      color: e,
                    )).toList()
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                )
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:
                colors.map((e) =>
                    Container(
                      height: 50,
                      width: 50,
                      color: e,
                    )).toList()
            ),
          ],
        )
      ),
    );
  }
}
