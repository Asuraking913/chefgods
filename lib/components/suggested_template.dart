import 'dart:io';

import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class SuggestedCardTemplate extends StatelessWidget {
  
  final colorClass = ColorClass();
  String name;
  String image;
  String price;
  String time;

  SuggestedCardTemplate({ 

  		required this.name, 
  		required this.image, 
  		required this.price, 
  		required this.time

  	});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
    	borderRadius: BorderRadius.circular(20),
      child: Container(
      	width: MediaQuery.of(context).size.width /2,
      	color: colorClass.white,
      		child: Column(
      				children: <Widget>[
      					Image.asset('assets/image/$image'), 
      
      					Padding(
      						padding: EdgeInsets.fromLTRB(10, 10, 10, 18),
      							child: Column(
      									crossAxisAlignment: CrossAxisAlignment.start,
      									children: [
      
      										Text(
      												"$name", 
      												style: TextStyle(
      														color:  colorClass.tertiary, 
      														fontSize: 16, 
      														fontWeight: FontWeight.w600, 
      														fontFamily: 'inter'
      													),
      											), 
      										Row(
      											mainAxisAlignment: MainAxisAlignment.start,
      										  children: [
      										    Icon(
      										    		Icons.access_time_sharp, 
      										    		color: colorClass.secondary,
      										    		size: 18,
      										    		
      										    	),
      										    SizedBox(width: 10,),
      										    Text(
      										    		'$time', 
      										    		style: TextStyle(
      										    				color: colorClass.secondary,
      										    				fontSize: 13,
      										    				fontFamily: 'inter'
      										    			),
      										    	)
      										  ],
      										), 

      										SizedBox(height: 10,),

      										Row(
      											children: <Widget>[
      												Text('$price\$'), 
      												Spacer(),
      												Icon(
      													Icons.add, 
      													color: colorClass.tertiary,
      												)
      											],
      										)
      
      									],
      								),
      						)
      
      					
      				],
      			),
      	),
    );
  }
}