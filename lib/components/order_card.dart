import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  
  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
      		padding: EdgeInsets.all(8),
      		color: colorClass.white,
      		child: Column(
      			children: <Widget>[
      				Row(
      					mainAxisAlignment: MainAxisAlignment.end,
      					children: <Widget>[
      						Icon(
      								Icons.star, 
      								color: colorClass.primary,
      								size: 16,
      							),
      						Text(
      							'4.7',
      							style: TextStyle(
      									color: colorClass.tertiary,
      									fontSize: 14,
      									fontFamily: 'inter'
      								),
      							), 
      					],
      				), 

      				Image.asset('assets/image/food1.png', width: 200, height: 200,)
      			],
      		),
      	),
    );
  }
}