
import 'package:flutter/material.dart';
import 'dart:math';


class Diceroller extends StatefulWidget {
 const Diceroller({super.key});
  @override
  State<Diceroller> createState() {
    return _Dicerollerstate();
  }

}

class _Dicerollerstate extends State<Diceroller>
{
  var dicerollcurrent='assets/images/dice-1.png';
  void onPressed(){
     var dicerollnum = Random().nextInt(6)+1;
     setState(() {
       dicerollcurrent = 'assets/images/dice-$dicerollnum.png';
     });
  }
  


@override
Widget build(context){
return   Column  (
              mainAxisSize: MainAxisSize.min,
              children: [
              Image.asset(dicerollcurrent, width: 200),
              TextButton(
                onPressed: onPressed, 
                style: TextButton.styleFrom(foregroundColor: Colors.white,padding:const EdgeInsets.all(20),textStyle: const TextStyle(fontSize: 25)),
                child: const Text('Roll Dice'))        
              ]
          );

}
}
