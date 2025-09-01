import 'dart:math';

import 'package:flutter/material.dart';

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottery App',style: TextStyle(
         fontSize: 18
        )),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text('Lottery winning number is $x'),
          ),
          Divider(thickness: 2,indent: 20,endIndent: 20,color: Colors.black,),
          // Text(x>5? 'x is greater then 5': x.toString())
          SizedBox(height: 15),
          Container(
            height: x == 4 ? 500 : 250,
            decoration: BoxDecoration(
              color: x == 4 ? Colors.teal : Colors.grey.withOpacity(0.3)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: x==4 ? Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Icon(Icons.done,color: Colors.green,size: 30,),
    SizedBox(height: 10),
    Text('congrats u won the lottery $x\n ',textAlign: TextAlign.center,)
    ],
    ):
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.error,color: Colors.red,size: 30,),
                  SizedBox(height: 10),
                  Text('better luck next time your number is $x\n try again',textAlign: TextAlign.center,)
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print(x);
        x=random.nextInt(5);
        setState(() {

        });
      },
          child: Icon(Icons.refresh),
      ),
    );
  }
}
