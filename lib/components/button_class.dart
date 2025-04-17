import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class ClassButtonClass extends StatelessWidget {

	final String label;
	final colorClass = ColorClass();
	final Function()? onTap;

	ClassButtonClass({

			required this.label, 
			this.onTap

		});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    		onTap: () {
    				onTap!();
    			},
    		child: Container(
    				width: double.infinity,
    				padding: EdgeInsets.all(18),
    				decoration: BoxDecoration(
    						color: colorClass.white, 
    						borderRadius: BorderRadius.circular(10),
    						border: Border.all(
    								width: 1, 
    								color: Color.fromARGB(225, 224, 224, 224)
    							)
    					),
    				child: Center(
    						child: Text(label, style: TextStyle(
    								fontFamily: 'inter', 
    								fontWeight: FontWeight.w600, 
    								color: colorClass.primary
    							),),
    					),
    			)
    	);
  }
}