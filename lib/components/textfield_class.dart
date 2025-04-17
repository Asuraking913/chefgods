import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class ClassTextfieldClass extends StatelessWidget {

	final colorClass = ColorClass();
	final String hintText;

	ClassTextfieldClass({

			required this.hintText

		});

  @override
  Widget build(BuildContext context) {
    return TextField(
    		obscureText: false,
    		decoration: InputDecoration(
    				fillColor: Colors.transparent,
    				filled: true,
    				hintText: hintText,
    				contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    				hintStyle: TextStyle(color: colorClass.secondary, fontFamily: 'inter'),
    				enabledBorder: OutlineInputBorder(
    						borderSide: BorderSide(color: Color.fromARGB(255, 210, 210, 210)),
    						borderRadius: BorderRadius.circular(8)
    					), 
    				focusedBorder: OutlineInputBorder(
    						borderSide: BorderSide(color: colorClass.white), 
    					)
    			),
    	);
  }
}