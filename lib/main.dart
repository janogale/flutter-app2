import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

//  STATE
int studentLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Student Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/mukhtar.jpg'),
                radius: 40.0,
              ),
            ),
Divider(height: 60.0,  color: Colors.grey[700],),
            Text(
              "NAME",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "Mukhtar",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Text(
              "CURRENT LEVEL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "$studentLevel",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  "jano@gmail.com",
                  style: TextStyle(color: Colors.grey[400], letterSpacing: 1.0),
                )
              ],
            )
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          FloatingActionButton(
            onPressed: (){
              setState(() {
                if(studentLevel < 1) return;
                studentLevel -= 1;
              });
            },
            child: Icon(Icons.remove),
            backgroundColor: Colors.grey[800],
          ),
          FloatingActionButton(
            onPressed: (){
              setState(() {
                studentLevel += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
          ),
        ],
      )

    );
  }
}
