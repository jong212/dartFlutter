import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        top:true,
        bottom: true,
        left: false,
        right: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(

            children: [
              _Top(
                selectedDate: selectedDate,
                onPressed :  OnHeartPressed,
              ),
              _Bottom(),
            ],
          ),
        ),
      )
    );
  }

  void OnHeartPressed(){

    showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context){
          return Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.white,
              height: 300,
              child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: selectedDate,
                  maximumDate: DateTime.now(),
                  dateOrder: DatePickerDateOrder.ymd ,
                  onDateTimeChanged: (DateTime date){
                    setState(() {
                      selectedDate = date;
                    });
                    print(date);
                  }
              ),
            ),
          );
        }
    );
  }
}
class _Top extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback? onPressed;

  const _Top({
    required this.selectedDate,
    required this.onPressed,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final nowD = DateTime.now();

    return Expanded(
        child: Container(
          child: Column(
            children: [
              Text(
                'U&I',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                '우리 처음 만난날',
                style: Theme.of(context).textTheme.bodyLarge,

              ),
              Text(
                '${selectedDate.year}.${selectedDate.month}.${selectedDate.day }',
                style: Theme.of(context).textTheme.bodyMedium,

              ),
              IconButton(
                  iconSize: 60,
                  color: Colors.red,
                  onPressed:onPressed,
                  icon:
                  Icon(
                      Icons.favorite
                  )
              ),
              Text(
                'D+${nowD.difference(selectedDate).inDays +1}',
                style: Theme.of(context).textTheme.displayMedium,

              )
            ],
          ),
        ),
      );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Image.asset(
          'asset/img/middle_image.png',
        ),
      ),
    );
  }
}
