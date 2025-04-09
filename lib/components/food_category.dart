import 'package:carousel_slider/carousel_slider.dart';
import 'package:chefgods/components/CategoryClass.dart';
import 'package:chefgods/components/category_template.dart';
import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class FoodCategory extends StatelessWidget {
  
  final colorClass = ColorClass();

  final List<Categoryclass> categories = [
  			Categoryclass(local_url: 'food1.png', name: 'Pizza'),
  			Categoryclass(local_url: 'briskette.png', name: 'Sushi'), 
  			Categoryclass(local_url: 'sushi.png', name: 'Thai'), 
  			Categoryclass(local_url: 'thai.png', name: 'Susage'), 
  		  ];

  @override
  Widget build(BuildContext context) {
    return Container(
    		child: Column(
    					children: <Widget>[
    						Text('Food Category', style: TextStyle(
                        	color: colorClass.tertiary,
                        	fontSize: 20,
                        	fontWeight: FontWeight.w900,
                      	),), 

    					SizedBox(height: 10,),

    					CarouselSlider(
    							options: CarouselOptions(
    									viewportFraction: 0.3, 
    									height: 95, 
    								),

    							items: categories.map((items) => CategoryTemplate(name: items.name, locate_url: items.local_url,)).toList()    						)
    				],
    			),
    	);
  }
}