import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {

	final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return Stack(
    		children: <Widget>[
    			ClipRRect(
    				borderRadius: BorderRadius.circular(20),
    				child: Image.asset('assets/image/food.jpg')
    				), 
    			Positioned(
    					top: 20,
    					left: 20,
    					child: Row(
    						crossAxisAlignment: CrossAxisAlignment.end,
    					  children: [
    					    Text(
    					    		'20%',
    					    		style:  TextStyle(
    					    				color: colorClass.white, 
    					    				fontSize: 30, 
    					    				fontWeight: FontWeight.w800, 
    					    				fontFamily: 'inter'
    					    			),
    					    	),
    					    SizedBox(width: 10,),
    					    Text(
    					    		'OFF',
    					    		style:  TextStyle(
    					    				color: colorClass.white, 
    					    				fontSize: 15, 
    					    				fontWeight: FontWeight.w800, 
    					    				fontFamily: 'inter'
    					    			),
    					    	),
    					  ],
    					),
    				), 

    			Positioned(
    					left: 20,
    					right: 20,
    					top: 70,
    					child: Text(
    					    		'Only On Chefgods',
    					    		style:  TextStyle(
    					    				color: colorClass.white, 
    					    				fontSize: 14,  
    					    				fontWeight: FontWeight.w700,
    					    				fontFamily: 'inter'
    					    			),
    					    	),
    				), 
    			Positioned(
    					bottom: 20,
    					left: 20,
    					child: TextButton(
    							onPressed: (){},
    							child:  Text('Order Now', style: TextStyle(fontFamily: 'inter'),), 
    							style: TextButton.styleFrom(
    									backgroundColor: colorClass.primary,
    									foregroundColor: colorClass.white, 
    									padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15)
    								),
    						),
    				)
    		],
    	);
  }
}