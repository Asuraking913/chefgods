import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/components/nav_bar.dart';
import 'package:chefgods/components/recommed_class.dart';
import 'package:chefgods/components/recommended.dart';
import 'package:chefgods/components/suggested_template.dart';
import 'package:flutter/material.dart';


class SearchPage extends StatelessWidget {

	final colorClass = ColorClass();
  final List recommendedList = <RecommedClass>[
    RecommedClass(name: 'Fried Rice', time: '15min 12km', price: "50", image: 'food1.png'),
    RecommedClass(name: 'Fried Rice', time: '15min 12km', price: "50", image: 'food1.png'),
    RecommedClass(name: 'Fried Rice', time: '15min 12km', price: "50", image: 'briskette.png'),
  ];

  @override
  Widget build(BuildContext context) {


    return SafeArea(
    		child: Scaffold(
            bottomNavigationBar: BottomNavigation(),
    				body: SingleChildScrollView(
    				  child: Container(
    				                              color: colorClass.background,
    				  		padding: EdgeInsets.fromLTRB(20, 25, 20, 10),
    				  		child: Column(
    				                    crossAxisAlignment: CrossAxisAlignment.start,
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
    				  							obscureText: false,
    				  							decoration: InputDecoration(
    				  							enabledBorder: OutlineInputBorder(
    				  									borderSide: BorderSide(color: Colors.transparent), 
    				  									borderRadius: BorderRadius.circular(30)
    				  								) ,

                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 0, color: Colors.transparent)
                              ),
    				  							fillColor: colorClass.white,
    				  							filled: true,
    				  							hintText: 'Search...',
    				  							contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    				  							hintStyle: TextStyle(
    				  									color: colorClass.secondary
    				  								), 
    				  						)
    				  				),
    				  
    				                      SizedBox(height: 10,),
    				  
    				                      Container(
    				                        height: 35,
    				                        child: ListView(
    				                          scrollDirection: Axis.horizontal,
    				                        
    				                          children: [
    				                            TextButton.icon(
    				                                onPressed: () {},
    				                                label: Text('Pickup', style: TextStyle( color: colorClass.secondary ),),
    				                                icon: Icon(Icons.gesture, color: colorClass.secondary,),
    				                              ), 
    				                            TextButton.icon(
    				                                onPressed: () {},
    				                                label: Text('Under 30 min', style: TextStyle( color: colorClass.secondary ),),
    				                                icon: Icon(Icons.access_time_sharp, color: colorClass.secondary,),
    				                              ), 
    				                            TextButton.icon(
    				                                onPressed: () {},
    				                                label: Text('Price', style: TextStyle( color: colorClass.secondary ),),
    				                                icon: Icon(Icons.space_dashboard_sharp, color: colorClass.secondary,),
    				                              ),
    				                            TextButton.icon(
    				                                onPressed: () {},
    				                                label: Text('Pickup', style: TextStyle( color: colorClass.secondary ),),
    				                                icon: Icon(Icons.gesture, color: colorClass.secondary,),
    				                              ),
    				                            TextButton.icon(
    				                                onPressed: () {},
    				                                label: Text('Pickup', style: TextStyle( color: colorClass.secondary ),),
    				                                icon: Icon(Icons.gesture, color: colorClass.secondary,),
    				                              ),
    				                            TextButton.icon(
    				                                onPressed: () {},
    				                                label: Text('Pickup', style: TextStyle( color: colorClass.secondary ),),
    				                                icon: Icon(Icons.gesture, color: colorClass.secondary, ),
    				                              ),
    				                          ],
    				                        
    				                        ),
    				                      ), 
    				  
    				                      SizedBox(height: 25,),
    				  
    				                      Row(
    				                          children: [
    				                              Expanded(child: SuggestedCardTemplate(name: "Chicken 'N fries", price: "30", time: '24min 17min', image: 'food.jpg',)), 
    				                              SizedBox(width:  10,),
    				                              Expanded(child: SuggestedCardTemplate(name: "Briskette", price: '20', time: '21min 15min', image: 'food.jpg',)), 
    				                          ],
    				                      ), 
    				  
    				                      SizedBox(height: 25,),
    				  
    				                      Text('Recommended', style: TextStyle( 
    				                        color: colorClass.tertiary, 
    				                        fontSize:  18, fontWeight: FontWeight.w600
    				                        ),),
    				  
    				                      SizedBox(height: 15,),
    				  
    				  
                                  Wrap(
                                      children: recommendedList.map((items) => Recommended(name: items.name, price: items.price, time: items.price, image: items.image,)).toList(),
                                      runSpacing: 10,
                                    )
    				      			],
    				  ),
    				  	),
    				),
    			),
    	);
  }
}