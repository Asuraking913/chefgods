import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/components/order_card.dart';
import 'package:flutter/material.dart';
import 'package:chefgods/components/order_class.dart';

class PlaceOrders extends StatelessWidget {
  final colorClass = ColorClass();

  final List order = <OrderClass>[
      OrderClass(name: 'Briskette', price: "6.57", time: 6, rating: 3.7, image: 'briskette.png'),
      OrderClass(name: 'Sushi', price: "14.57", time: 9, rating: 2.8, image: 'sushi.png'),
      OrderClass(name: 'Thai', price: "12.57", time: 4, rating: 4.7, image: 'thai.png'),
      OrderClass(name: 'Veggies', price: "2.57", time: 10, rating: 4.2, image: 'food1.png'),
      OrderClass(name: 'Thai', price: "12.57", time: 4, rating: 4.7, image: 'thai.png'),
      OrderClass(name: 'Veggies', price: "2.57", time: 10, rating: 4.2, image: 'food1.png'),
      OrderClass(name: 'Thai', price: "12.57", time: 4, rating: 4.7, image: 'thai.png'),
      OrderClass(name: 'Veggies', price: "2.57", time: 10, rating: 4.2, image: 'food1.png'),
  ];


  

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

            Wrap(

                children: order.map((items) => OrderCard(name: items.name, image: items.image, rating: items.rating, time: items.time, price: items.price,)).toList(),
                spacing: 10,
                runSpacing: 10,

              )
              
            ],
    		),
    	);
  }
}