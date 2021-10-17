import 'package:flutter/material.dart';

class ThirteenPage extends StatefulWidget {
  @override
  _ThirteenPageState createState() => _ThirteenPageState();
}

class _ThirteenPageState extends State<ThirteenPage> {
  bool animated = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('thirteen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Flutter'),
                  Text(' is '),
                  Text('awesome '),
                ],
              ),
              style: animated
                  ? TextStyle(
                      color: Colors.blue,
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 4,
                    )
                  : TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w100,
                      fontSize: 14,
                      letterSpacing: 1,
                    ),
              duration: Duration(milliseconds: 1000),
              curve: Curves.bounceOut,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('Animate'),
              onPressed: () {
                setState(() {
                  animated = !animated;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
