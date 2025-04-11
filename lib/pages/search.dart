import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/components/nav_bar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

	final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    		child: Scaffold(
    				body: Container(
    						padding: EdgeInsets.fromLTRB(20, 25, 20, 10),
    						child: Column(
    								children: <Widget>[
    									Row(
    											children: <Widget>[
    												Text('Search', style: TextStyle(
    														fontSize: 20, 
    														fontWeight: FontWeight.bold, 
    														fontFamily: 'inter',
    													),),
    												Spacer(),
    												Container(
    													padding: EdgeInsets.all(8),
    													decoration: BoxDecoration(
    															color: colorClass.white,
    															borderRadius: BorderRadius.circular(50)
    														),
    												  child: Icon(
    												  		Icons.tune_outlined
    												  	),
    												)

    											],
    										), 

    									SizedBox(height: 20,),

    									TextField(
    											obscureText: true,
    											decoration: InputDecoration(
    											enabledBorder: OutlineInputBorder(
    													borderSide: BorderSide(color: Colors.transparent), 
    													borderRadius: BorderRadius.circular(30)
    												) ,
    											fillColor: colorClass.white,
    											filled: true,
    											hintText: 'Search...',
    											contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    											hintStyle: TextStyle(
    													color: colorClass.secondary
    												), 
    										)
    								)
    						],
    				),
    					),
    				bottomNavigationBar: BottomNavigation(),
    			),
    	);
  }
}