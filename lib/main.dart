import 'package:flutter/material.dart';

void main() {
  runApp(profileCard());
}

class profileCard extends StatefulWidget {
  const profileCard({super.key});

  @override
  State<profileCard> createState() => _profileCardState();
}

class _profileCardState extends State<profileCard> {
  int flutterLevel = 0;
  void set_State() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flutterLevel = flutterLevel + 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Images/sidePortriat.jpg'),
                radius: 60,
              ),
            ),
            Center(
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Yeabsira",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "CURRENT FLUTTER LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$flutterLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "INBOX",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.amberAccent[200],
                ),
                SizedBox(
                  width: 10,
                ),
                Text("yeabsiratilahun.dev@gmail.com",
                    style: TextStyle(
                        color: Colors.grey[400],
                        letterSpacing: 1,
                        fontSize: 18)),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
