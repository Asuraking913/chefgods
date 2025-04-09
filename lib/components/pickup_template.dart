import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class Pickuptemplate extends StatelessWidget {
  
  final colorClass = ColorClass();
  final String option;
  final String value;
  final IconData icon;
  final String? third;

  Pickuptemplate({

  		required this.option,
  		required this.value,
  		required this.icon,
  		this.third

  	}); 

  @override
  Widget build(BuildContext context) {
    return Container(
				padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
				child: Container(
				    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
				    decoration: BoxDecoration(
				        borderRadius: BorderRadius.circular(60)
				      ),
				
				
				    child: Column(
				      children: [
				        Row(
				            children: <Widget>[
				        				
				              Container(
				                padding: EdgeInsets.all(8),
				                decoration: BoxDecoration(
				                    color: colorClass.white,
				                    borderRadius: BorderRadius.circular(50)
				                  ),
				                child: Icon(
				                    icon, 
				                    size: 30,
				                    color: colorClass.secondary,
				                  ),
				              ),

				        				
				              SizedBox(width: 10,),
				        				
				              Column(
				                  crossAxisAlignment: CrossAxisAlignment.start,
				                  children: <Widget>[
				                  Text(
				                      '$option', 
				                      style: TextStyle(
				                          color: colorClass.secondary, 
				                          fontSize: 12, 
				                          fontFamily: 'inter', 
				                          fontWeight: FontWeight.w800
				                        ),
				                      ), 
				                    Text(
				                      '$value', 
				                      style: TextStyle(
				                          color: colorClass.tertiary, 
				                          fontSize: 15, 
				                          fontFamily: 'inter', 
				                          fontWeight: FontWeight.w800
				                        ),
				                      ), 

				                    third == null ?
				                    Text('')
				                    :

				                    Text(
				                      '$third', 
				                      style: TextStyle(
				                          color: colorClass.tertiary, 
				                          fontSize: 13, 
				                          fontFamily: 'inter', 
				                          fontWeight: FontWeight.w400
				                        ),
				                      )
				                  ],
				                ), 				
				            ],
				          ),
				      ],
				    ),
				  ),
        );
  }
}