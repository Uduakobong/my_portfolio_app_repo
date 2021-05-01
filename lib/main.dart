import 'package:flutter/material.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: Colors.redAccent,
        title: Text(
          'My Portfolio',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/bye-2.jpg'),
              radius: 200.0,

            ),
            Divider(
              height: 50.0,
            ),
            Text(
              'Uduakobong Umoren',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0), //leaves space between text
            Text(
              'Mobile Developer - Flutter/Dart',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 35.0,
                letterSpacing: 1.5,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 200.0), //leaves space between text
            Row(
              children: [
                Icon(
                  Icons.email,
                  size: 50.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'biggeststation@gmail.com',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                    Icons.phone,
                  size: 50.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  '+234806*****46',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                    Icons.house_rounded,
                  size: 50.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'B# Devz, Banking Layout, Jos.',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
