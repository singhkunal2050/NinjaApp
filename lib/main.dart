import 'package:flutter/material.dart';

main() => runApp(NinjaApp());

class NinjaApp extends StatefulWidget {
  @override
  _NinjaAppState createState() => _NinjaAppState();
}

class _NinjaAppState extends State<NinjaApp> {
  int age = 0;

  void add() {
    setState(() {
      this.age++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800],
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
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
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
                '$age',
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
                    Icons.email,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      "singhkunal2051@gmail.com",
                      style: TextStyle(color: Colors.grey[300], fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: RaisedButton(
                  color: Colors.grey[700],
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: add,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text(
            "+",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          foregroundColor: Colors.black45,
          onPressed: add,
          backgroundColor: Colors.grey[200],
        ),
      ),
    );
  }
}

// sizedbox can be used to add spacing if we want an option from Padding widget
// we can also use circle avatar widget in flutter
