import 'package:flutter/material.dart';

import 'package:firstapp/dice_roller.dart';

var startAlignment = Alignment.topRight;
var endAlignment = Alignment.bottomRight;    //we can use "final/const" too for fixing the value of variable

class Gradientcontainer extends StatelessWidget{
  const Gradientcontainer(this.color1,this.color2,{super.key});  //for positional arguments
  final Color color1;
  final Color color2;
    
  @override
  
  Widget build(context){

    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1,color2],
                begin: startAlignment,
                end: endAlignment ),
          ),
          child: const Center(
            child: Diceroller(),
          )
    );
  }
}





