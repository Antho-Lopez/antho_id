import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: AnthoCard(),
));

class AnthoCard extends StatefulWidget {
  const AnthoCard({Key? key}) : super(key: key);

  @override
  State<AnthoCard> createState() => _AnthoCardState();
}

class _AnthoCardState extends State<AnthoCard> {

  int age = 20;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Antho ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 70,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.white70,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 1.8,
              ),
            ),

            SizedBox(height: 3),
            // EASIER WAY TO DO PADDING / MARGIN
            Text(
              'Anthony Lopez',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.8,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            Text(
              'Age',
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 1.8,
              ),
            ),
            SizedBox(height: 3),
            // EASIER WAY TO DO PADDING / MARGIN
            Text(
              '$age' + ' ans',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.8,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white70,
                ),
                SizedBox(width: 10),

                Text(
                  'anthony.34.lopez@gmail.com',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}