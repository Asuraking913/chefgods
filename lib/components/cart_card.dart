import 'package:chefgods/components/add_ons.dart';
import 'package:chefgods/components/cart_class.dart';
import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  final colorclass = ColorClass();
  String name;
  double price;
  String image;
  List<AddOns> addOns;
  int portion;

  CartCard({

      required this.name, 
      required this.price, 
      required this.image,
      required this.addOns, 
      required this.portion

    });
  @override
  Widget build(BuildContext context) {
    return Container(
    		padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    		decoration: BoxDecoration(
    				color: colorclass.white,
    				borderRadius: BorderRadius.circular(10)
    			),
    		child: Container(
    		  child: Column(
    		          crossAxisAlignment: CrossAxisAlignment.start,
    		  		children: <Widget>[
    		  			Row(
    		  				children: <Widget>[
    		  					Expanded(
    		  					  child: Container(
    		  					  		width: 80,
    		  					  		height: 80,
    		  					  		decoration: BoxDecoration(
    		                              borderRadius: BorderRadius.circular(10),
    		                              image: DecorationImage(
    		                                  image: AssetImage('assets/image/$image'),
    		                                )
    		                            ),
    		  					  	),
    		  					), 
    		  
    		  					SizedBox(width: 8,),
    		  
    		  
    		  					Container(
    		                      width: 120,
    		  					  child: Column(
    		  					  	crossAxisAlignment: CrossAxisAlignment.start,
    		  					  	children: <Widget>[
    		  					  		Text('$name', 
    		  					  			softWrap: true,
    		  					  			maxLines: 10,
    		  					  			style: TextStyle(
    		  					  				color: colorclass.tertiary,
    		  					  				fontSize: 12, 
    		  					  				fontWeight: FontWeight.w600, 
    		  					  				fontFamily: 'inter', 
    		  					  			),), 
    		  					  
    		  					  		Text('$price sd')
    		  					  	],
    		  					  ),
    		  					), 
    		  
    		  					// Spacer(),
    		  
    		  
    		  					Expanded(
    		  					  child: Container(
    		                          decoration: BoxDecoration(
    		                              borderRadius: BorderRadius.circular(20), 
    		                              color: Colors.grey[300]
    		                            ),
    		                          padding: EdgeInsets.all(6),
    		  					  		child: Row(
    		  					  				children: <Widget>[
    		  					  					Icon(
    		  					                            Icons.remove_sharp, 
    		  					                            color: colorclass.tertiary,
    		                                                size: 20,
    		  					                          ),
    		  					  							SizedBox(width: 10,),
    		  					                          Text('$portion', style: TextStyle(
    		  					                          		fontSize: 12
    		  					                          	),), 
    		  					  							SizedBox(width: 15,),
    		  					                          Icon(
    		  					                            Icons.add, 
    		  					                            color: colorclass.tertiary,
    		                                                size: 20,
    		  
    		  					                          ),
    		  					  
    		  					  				],
    		  					  			),
    		  					  	),
    		  					)
    		  				],
    		  			), 
    		  
    		                SizedBox(height: 15,),


    		  
    		               Container(
                        height: 40,
    		                 child: ListView(
                            scrollDirection: Axis.horizontal,
    		                    children: addOns.map((items) => AddOn(name: items.name, price: items.price)).toList()
    		                  ),
    		               )
    		  		],
    		  	),
    		)
    	);
  }
}