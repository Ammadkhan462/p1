import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text("MyApp"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Loterry winning number is $x',
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.amber.withOpacity(.7)),
          )),
          SizedBox(
            height: 20,
          ),
          // Text(x > 5 ? 'x is greater than 5' : x.toString())
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(1, 3), // changes position of shadow
                ),
              ],
            ),
            child: x == 5
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Woow! You Win the Game!!'),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Better time next time'),
                      ),
                    ],
                  ),
          )
        ],
      ),
      //  SafeArea(
      //     child:
      //   ),
      floatingActionButton: FloatingActionButton(
        hoverColor: Color.fromRGBO(0, 0, 0, 1),
        onPressed: () {
          //print(random.nextInt(10).toString());
          x = random.nextInt(6);
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    ));
  }
}
