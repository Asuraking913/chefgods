import 'package:carousel_slider/carousel_slider.dart';
import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/components/food_category.dart';
import 'package:chefgods/components/image_card_template.dart';
import 'package:chefgods/components/nav_bar.dart';
import 'package:chefgods/components/place_orders.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
  
  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    		child: Scaffold(
          bottomNavigationBar: BottomNavigation(),
    			body: SingleChildScrollView(
    			  // padding: const EdgeInsets.all(8.0),
    			  child: Container(
    			  	color: colorClass.background,
    			    child: Padding(
    			    	padding: EdgeInsets.fromLTRB(20, 25, 20, 10),
    			    	child: Column(
    			                    crossAxisAlignment: CrossAxisAlignment.start,
    			    			children: <Widget>[
    			    				Row(
    			    					children: <Widget>[
    			    						Container(
    			    							padding: EdgeInsets.all(8),
    			    							decoration: BoxDecoration(
    			    									color: colorClass.white,
    			    									borderRadius: BorderRadius.circular(50)
    			    							),
    			    						  child: Icon(
    			    						  	Icons.search, 
    			    						  	size: 20,
    			    						  	),
    			    						),
    			    						Spacer(),
    			    						Column(
    			    							children: <Widget>[
    			    								Text(
    			    									'Location',
    			    									style: TextStyle(
    			    											color: colorClass.secondary, 
    			    											fontSize: 12
    			    										),
    			    									), 
    			    								Row(
    			    									children: <Widget>[
    			    										Transform.rotate(
    			    											angle: math.pi / -2,
    			    										  	child: Icon(
    			    										  	Icons.arrow_back_ios_new_outlined, 
    			    										  	size: 15,
    			    										  ),
    			    										),
    			    										SizedBox(width: 5,),
    			    										Text(
    			    										'New York',
    			    										style: TextStyle(
    			    												color: colorClass.tertiary,
    			    												fontSize: 14, 
    			    												fontWeight: FontWeight.w500, 
    			    												fontFamily: ''
    			    											),
    			    										), 
    			    										SizedBox(width: 5,),
    			    										Icon(
    			    										Icons.location_on, 
    			    										size: 15,
    			    										color: colorClass.primary,
    			    										    			  										  ),
    			    									],
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
    			    						  	Icons.shopping_cart_outlined, 
    			    						  	size: 20,
    			    						  	),
    			    						),
    			  
    			    					],
    			    				), 
    			  
    			                      SizedBox(height: 25,),
    			  
    			    				CarouselSlider(
    			    				    options: CarouselOptions(
    			    				        viewportFraction: 0.9,
    			                              autoPlay: true, 
    			                              height: 200
    			    				      ),
    			    				
    			    				    items: [
    			    				      Padding(
    			    				        padding: const EdgeInsets.symmetric(horizontal: 5),
    			    				        child: ImageCard(),
    			    				      ),
    			                            Padding(
    			                              padding: const EdgeInsets.symmetric(horizontal: 5),
    			                              child: ImageCard(),
    			                            ),
    			                            Padding(
    			                              padding: const EdgeInsets.symmetric(horizontal: 5),
    			                              child: ImageCard(),
    			                            ),
    			  
    			  
    			    				    ],
    			    				  ), 
    			  
    			                      SizedBox(height: 10,),
    			  
    			                      FoodCategory(), 
    			  
    			                      SizedBox(height: 10,),
    			                      
    			                      PlaceOrders()
    			    			],
    			    		), //column
    			  	  ),
    			  	),
    			),
    			),
    	);
  }
}