import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {

  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    		body: Container(

    				color: colorClass.primary,
    				child: Center(
    						child: Column(
    								children: <Widget>[
    									Image.asset('assets/image/chefhat.png')
    								],
    							),
    					),
    			),
    	);
  }
}