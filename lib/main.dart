import 'package:flutter/material.dart';

main() => runApp(NinjaApp());

class NinjaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Ninja App",
            style: TextStyle(
              fontSize: 35,
              fontStyle: FontStyle.italic,
              fontFamily: 'Doc',
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 40, 40, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image(
                  height: 200,
                  image: AssetImage('assets/images/ks_logo.png'),
                  repeat: ImageRepeat.repeatY,
                ),
              ),
              Divider(
                height: 40,
                color: Colors.grey,
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
                "Kunal Singh",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 28,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Age",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "21",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 28,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.access_alarm,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Kunal is trying to learn flutter",
                    style: TextStyle(color: Colors.grey[300], fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// sizedbox can be used to add spacing if we want an option from Padding widget
// we can also use circle avatar widget in flutter