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
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: (
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Species: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black87
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: (
                        Text('Platinum King Baloon Molly',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black26
                            ))
                    ),
                  )

                ],
              )
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: (
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Species: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black87
                          )),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: (
                            Text('Platinum King Baloon Molly',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black26
                                ))
                        ),
                      )
                    ],
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: (
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Species: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black87
                          )),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: (
                            Text('Platinum King Baloon Molly',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black26
                                ))
                        ),
                      )
                    ],
                  )
              ),
            )
          ]
        ),
        ),
    ));
  }
