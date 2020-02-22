import 'dart:math';

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
        body: DicePageNew(),
      ),
    ),
  );
}

// in order for hot reload to work you need to be in a stateful or stateless widget
// stateless widgets are immutable
class DicePage extends StatelessWidget {

  //not stateless widget hot reload only apploed within the build
  @override
  Widget build(BuildContext context) {

    int leftDiceNumber = 2;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
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


//stful shortcut
class DicePageNew extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePageNew> {

  int leftDiceNumber = 1;
  int middleDiceNumber = 1;
  int rightDiceNumber = 1;

  void randomize_dice () {
    leftDiceNumber = Random().nextInt(6) + 1;
    middleDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;

    print('left = ' + leftDiceNumber.toString() + ' middle = ' + middleDiceNumber.toString() + ' right = ' + rightDiceNumber.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Image.asset('assets/images/IMG_6536.jpeg'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$middleDiceNumber.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
        RaisedButton(
          //set state calls the build method again a tells it to update from any previous values
          //set state  marks all the locations where the variable is being used, thus when we call build it will redraw everything that was marked as being used/changed
          color: Colors.white,
          onPressed: () {
            setState(() {
              print('rolling dice');
              randomize_dice();
            });
          },
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}