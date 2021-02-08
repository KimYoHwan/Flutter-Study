import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.deepPurpleAccent[700],
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 45.0,
                    backgroundImage: AssetImage('images/My_profile.jpeg'),
                  ),
                ),
                Text(
                  'YoHwan Kim',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      fontSize: 40),
                ),
                Text(
                  'SHUIIING DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    color: Colors.white,
                    child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.deepPurpleAccent[700],
                        ),
                        title: Text(
                          '+82 010-9926-7403',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                            color: Colors.deepPurpleAccent[700],
                          ),
                        ))),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: ListTile(
                      leading: Icon(Icons.email,
                          color: Colors.deepPurpleAccent[700]),
                      title: Text(
                        'radline000@gmail.com',
                        style: TextStyle(
                            color: Colors.deepPurpleAccent[700],
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
