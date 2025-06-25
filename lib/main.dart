import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile()
  ),
  );
}


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AQUA DIARY',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.blueAccent[100],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),

          // Centered title
          Center(
            child: Text(
              'User Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Center(
            child: Icon(Icons.person, size: 100,),
          ),
          SizedBox(height: 30),

          // Left-aligned label and name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 10),
                  child: Text(
                    'Andrei Gabriel B. Comia',
                    style: TextStyle(fontSize: 18
                    ),
                  ),
                ),

                Container(
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 10),
                  child: Text(
                    'andreicomia7@gmail.com',
                    style: TextStyle(fontSize: 18),
                  ),
                ),

                Container(
                  child: Text(
                    'Company',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 10),
                  child: Text(
                    'Batangas State University',
                    style: TextStyle(fontSize: 18),
                  ),
                ),

                Container(
                  child: Text(
                    'Contact Number',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 10),
                  child: Text(
                    '09367070877',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child:
                  ElevatedButton(onPressed:(){}, child:
                  Container(
                    padding: EdgeInsets.fromLTRB(120, 20, 120, 20),
                    child: Text('Logout')),
                  ),
                ),
              ]
            ),
          )

        ],
      ),
    );
  }
}
