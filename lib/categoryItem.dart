import 'package:flutter/material.dart';

class categoryItem extends StatelessWidget {
  final String record;
  final String achiever;
   categoryItem({required this.record,
     required this.achiever});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children:[
        Text(achiever,
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Fjalla'
          ),),Text(achiever,
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Fjalla'
          ),),
      ]
    );
  }
}
