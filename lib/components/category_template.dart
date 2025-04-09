import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CategoryTemplate extends StatelessWidget {

	String locate_url;
	String name;

  	CategoryTemplate({

  			required this.locate_url, 
  			required this.name

  		});  

  	final colorclass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return Container(
    		padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    		decoration: BoxDecoration(
    				color: colorclass.white, 
    				borderRadius: BorderRadius.circular(10)
    			),
    		child: Column(
    				crossAxisAlignment: CrossAxisAlignment.center,
    				children: <Widget>[
    					Image.asset('assets/image/${locate_url}', 
    					width: 50, 
    					height: 50,
    				), 
    					Text(
    						'$name',
    						style: TextStyle(
    								color: colorclass.secondary,
    								fontFamily: 'inter',
    								fontSize: 15
    						)
    					),
    				],
    			),
    	);
  }
}