import "dart:math";

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: NazwaKlasyStateful("Gra_w_kostki"),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class NazwaKlasyStateful extends StatefulWidget {
  final String title;

  NazwaKlasyStateful(this.title);

  @override
  _NazwaKlasyStatefulState createState() => _NazwaKlasyStatefulState();
}

class _NazwaKlasyStatefulState extends State<NazwaKlasyStateful> {
  int number = 1;
  int number2 = 1;

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        border: Border.all(
          width: 10,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 17, 180, 112),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(1),
                  padding: EdgeInsets.all(1),
                  decoration: myBoxDecoration(),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          number = Random().nextInt(6) + 1;
                        });
                      },
                      child: Text(
                        "$number",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                  margin: EdgeInsets.all(1),
                  padding: EdgeInsets.all(1),
                  decoration: myBoxDecoration(),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          number2 = Random().nextInt(6) + 1;
                        });
                      },
                      child: Text(
                        "$number2",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}