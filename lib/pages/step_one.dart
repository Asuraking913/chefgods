import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class StepOne extends StatelessWidget {
  
  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    		child: Scaffold(
    				body: Container(
    						child: Padding(
    						  padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
    						  child: Column(
    						  		children: <Widget>[
    						  			Image.asset('assets/image/search.png'), 
    						  			SizedBox(height: 30,), 
    						  			Text('Find Your Favorite Meals Instantly', textAlign: TextAlign.center, style: TextStyle(
    						  					fontSize: 20,
    						  					fontFamily: 'inter', 
    						  					fontWeight: FontWeight.w900, 
    						  					color: colorClass.tertiary
    						  				),), 
    						  			SizedBox(height: 10,), 
    						  			Text(
    						  				'Search from thousands of dishes and cuisines tailored made to satisfy your cravings in just a few taps', 
    						  				textAlign: TextAlign.center, 
    						  				style: TextStyle(
    						  					fontSize: 14,
    						  					fontFamily: 'inter',
    						  					color: colorClass.secondary 
    						  				),), 

    						  		],
    						  	),
    						),
    					)
    			),
    	);
  }
}