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
              radius: 100.0,
            ),
            Divider(
              height: 30.0,
            ),
            Text(
              'Uduakobong Umoren',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0), //leaves space between text
            Text(
              'Mobile Developer - Flutter/Dart',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 25.0,
                letterSpacing: 1.5,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 50.0), //leaves space between text
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Column(
                    children: [
                      DetailsFew(
                        iconData: Icons.link,
                        title: 'GitHub',
                        subtitle: 'https://github.com/Uduakobong',
                      ),
                      DetailsFew(
                        iconData: Icons.phone,
                        title: 'Phone',
                        subtitle: '+234 806*****46',
                      ),
                      DetailsFew(
                        iconData: Icons.email,
                        title: 'Email',
                        subtitle: 'biggeststation@gmail.com',
                      ),
                      DetailsFew(
                        iconData: Icons.widgets_outlined,
                        title: 'Path',
                        padding: 12.0,
                        subtitle: 'Flutter/Dart - Mobile',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class DetailsFew extends StatelessWidget {
  final iconData;
  final title;
  final subtitle;
  final double padding;

  const DetailsFew({this.iconData, this.title, this.subtitle, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(vertical: padding ?? 0.0, horizontal: 16.0),
          leading: Icon(iconData),
          title: Text(title),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}
