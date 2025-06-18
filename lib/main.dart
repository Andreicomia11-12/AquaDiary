  import 'package:flutter/material.dart';

  void main() {
    runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AQUA DIARY',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),),
          backgroundColor: Colors.blueAccent[100],
        ),
        body: Center(
          child: Column(
            children: [
              Text('Sail-fin Molly',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan
                  )),
              Text('Giant Sailfin Molly',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent
                  )),
              Text('Platinum King Balloon Molly ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black26
                  )),

            ],
          ),
        ),
        ),
    ));
  }
