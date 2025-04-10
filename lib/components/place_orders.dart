import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/components/order_card.dart';
import 'package:flutter/material.dart';

class PlaceOrders extends StatelessWidget {
  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      // height: 250,
    	padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
    	child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
    			children: <Widget>[
    				Row(
    					children: <Widget>[
    						Text('Place Your Orders', style:  TextStyle(
    								fontSize: 15,
    								color: colorClass.tertiary, 
    								fontFamily: 'inter', 
    								fontWeight: FontWeight.w800
    							),),
    						Spacer(),
    						Text('See all', style: TextStyle(
    								color: colorClass.secondary
    							),),
    					],
    				), 

            SizedBox(height: 15,),

            Row(
              children: <Widget>[
                OrderCard(),
                SizedBox(width: 10,),
                OrderCard(),
              ],
            ),
            // Row(
            //   children: <Widget>[
            //     OrderCard(),
            //     SizedBox(width: 10,),
            //     OrderCard(),

            //   ],
            // ),
            // Row(
            //   children: <Widget>[
            //     OrderCard(),
            //     SizedBox(width: 10,),
            //     OrderCard(),
                
            //   ],
            // ),
            // Row(
            //   children: <Widget>[
            //     OrderCard(),
            //     SizedBox(width: 10,),
            //     OrderCard(),
                
            //   ],
            // ),
    			],
    		),
    	);
  }
}