import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              _Top(),
              _Bottom(),
            ],
          ),
        ),
      )
    );
  }  
}
class _Top extends StatelessWidget {
  const _Top({super.key});

  @override
  Widget build(BuildContext context) {
    
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
                '2023.11.23',
                style: Theme.of(context).textTheme.bodyMedium,

              ),
              IconButton(
                  iconSize: 60,
                  color: Colors.red,
                  onPressed: (){
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
                                  dateOrder: DatePickerDateOrder.ymd ,
                                  onDateTimeChanged: (DateTime date){
                                print(date);
                              }
                              ),
                            ),
                          );
                        }
                    );
                  },
                  icon:
                  Icon(
                      Icons.favorite
                  )
              ),
              Text(
                'D+1',
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
