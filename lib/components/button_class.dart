import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class ClassButtonClass extends StatelessWidget {

	final String label;
	final colorClass = ColorClass();

	ClassButtonClass({

			required this.label

		});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    		onTap: () {},
    		child: Container(
    				width: double.infinity,
    				padding: EdgeInsets.all(20),
    				decoration: BoxDecoration(
    						color: colorClass.white
    					),
    				child: Center(
    						child: Text(label, style: TextStyle(
    								fontFamily: 'inter', 
    								fontWeight: FontWeight.w600, 
    								// color: colorClass.primary
    							),),
    					),
    			)
    	);
  }
}