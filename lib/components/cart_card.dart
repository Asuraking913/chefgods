import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  final colorclass = ColorClass();

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
    		  					  		width: 100,
    		  					  		height: 100,
    		  					  		decoration: BoxDecoration(
    		                              borderRadius: BorderRadius.circular(10),
    		                              image: DecorationImage(
    		                                  image: AssetImage('assets/image/food1.png'),
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
    		  					  		Text('Loaded Sweet Potato Fries', 
    		  					  			softWrap: true,
    		  					  			maxLines: 10,
    		  					  			style: TextStyle(
    		  					  				color: colorclass.tertiary,
    		  					  				fontSize: 12, 
    		  					  				fontWeight: FontWeight.w600, 
    		  					  				fontFamily: 'inter', 
    		  					  			),), 
    		  					  
    		  					  		Text('\$5.34')
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
    		  					                          Text('1', style: TextStyle(
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
    		  
    		                GestureDetector(
    		                    child: Container(
    		                      decoration: BoxDecoration(
    		                          border: Border.all(width: 1, color: colorclass.secondary),
    		                          borderRadius: BorderRadius.circular(20)
    		                        ),
    		                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    		                        child: Text(
    		                            'Extra Broccolli \$1.18'
    		                          ),
    		                      ),
    		                  )
    		  		],
    		  	),
    		)
    	);
  }
}