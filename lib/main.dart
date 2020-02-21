import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Dice App'),
        ),
        body: DicePage(),
      ),
    ),
  );
}

// in order for hot reload to work you need to be in a stateful or stateless widget

class DicePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice1.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice4.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice6.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        RaisedButton(
          onPressed: (){
            //inside here is the logic for what till happen when the button is pressed
            print('Rolling');
          },
          child: Text('Roll The Dice'),
        ),
      ],
    );
  }
}


class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {

  int left = 1;
  int middle = 3;
  int right = 4;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$left.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$middle.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$right.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        RaisedButton(
          onPressed: (){
            setState(() {
              left = 2;
              middle = 6;
              right = 1;

            });
            //inside here is the logic for what till happen when the button is pressed
            print('Rolling $left $middle $right');
          },
          child: Text('Roll The Dice'),
        ),
      ],
    );
  }
}
