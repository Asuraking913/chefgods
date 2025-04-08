import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class Pickup extends StatelessWidget {

 	final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return Container(
				padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
				decoration: BoxDecoration(
				    borderRadius: BorderRadius.circular(10),
				    color: colorClass.white,
				  ),
				child: Container(
				    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
				    decoration: BoxDecoration(
				        color: colorClass.tertiary,
				        borderRadius: BorderRadius.circular(60)
				      ),
				
				
				    child: Column(
				      children: [
				        Row(
				            children: <Widget>[
				        				
				              CircleAvatar(
				                  radius: 23,
				                ), 
				        				
				              SizedBox(width: 10,),
				        				
				              Column(
				                  crossAxisAlignment: CrossAxisAlignment.start,
				                  children: <Widget>[
				                    Text(
				                      'James Cooper', 
				                      style: TextStyle(
				                          color: colorClass.white, 
				                          fontSize: 16, 
				                          fontFamily: 'inter', 
				                          fontWeight: FontWeight.w800
				                        ),
				                      ), 
				                    Text(
				                      'Food Rider', 
				                      style: TextStyle(
				                          color: colorClass.white, 
				                          fontSize: 14, 
				                          fontFamily: 'inter', 
				                          fontWeight: FontWeight.w400
				                        ),
				                      )
				                  ],
				                ), 				
				              Spacer(), 				
				              Container(
				                padding: EdgeInsets.all(8),
				                decoration: BoxDecoration(
				                    color: colorClass.white,
				                    borderRadius: BorderRadius.circular(50)
				                  ),
				                child: Icon(
				                    Icons.message_outlined, 
				                    color: colorClass.primary,
				                    
				                  ),
				              ), 
				              SizedBox(width: 10,),
				              Container(
				                padding: EdgeInsets.all(8),
				                decoration: BoxDecoration(
				                    color: colorClass.white,
				                    borderRadius: BorderRadius.circular(50)
				                  ),
				                child: Icon(
				                    Icons.call, 
				                    color: colorClass.primary,
				                  ),
				              )
				            ],
				          ),
				      ],
				    ),
				  ),
        );
  }
}