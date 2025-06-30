import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF006D77),
          title: Text(
            'AquaCare',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.teal, // background color
            padding: EdgeInsets.all(16), // space inside the box
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hello'),
                Text('hasdaj'),
                Text('dasda')

              ],
            ),// space outside the box
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.teal, // background color
            padding: EdgeInsets.all(16), // space inside the box
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hello'),
                Text('hasdaj'),
                Text('dasda')

              ],
            ),// space outside the box
          ),

          Container(
            width: double.infinity,
            height: 100,
            color: Colors.teal, // background color
            padding: EdgeInsets.all(16), // space inside the box
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hello'),
                Text('hasdaj'),
                Text('dasda')

              ],
            ),// space outside the box
          ),
        ],
      ),
    );
  }
}
