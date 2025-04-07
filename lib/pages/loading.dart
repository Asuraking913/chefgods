import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {

  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    		body: Center(
    				child: Container(

    					color: colorClass.primary,
    					child: Padding(
    					  padding: EdgeInsets.symmetric(horizontal: 20, vertical:  10),
    					  child: Column(
    					  		mainAxisAlignment: MainAxisAlignment.center,
    					  		crossAxisAlignment: CrossAxisAlignment.center,
    					  		children: <Widget>[
    					  			Image.asset('assets/image/chefhat.png'), 
    					  			Text('Chefgods', style: TextStyle(
    					  					color: colorClass.background, 
    					  					fontFamily: "geist", 
    					  					fontSize: 30, 
    					  					fontWeight: FontWeight.bold, 
    					  				), textAlign: TextAlign.center,), 
    					  			SizedBox(height: 25,),
    					  			Text('Where Cravings Find Comfort', style: TextStyle(
    					  						color: colorClass.background,
    					  						fontFamily: 'inter', 
    					  						fontSize: 19, 
    					  						fontWeight: FontWeight.w700
    					  					)),
    					  			SizedBox(height: 10,),
    					  			Text(
    					  				'Long-chain hydrocarbons refrigerator augmented reality footage geodesic fetishism receding assassin. ', 
    					  				textAlign: TextAlign.center,
    					  				style: TextStyle(
    					  						color: colorClass.background,
    					  						fontFamily: 'inter', 
    					  						fontSize: 14.5
    					  					),
    					  				)
    					  		],
    					  	),
    					),
    				),
    			)
    	);
  }
}