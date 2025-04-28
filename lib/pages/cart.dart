import 'package:chefgods/components/cart_card.dart';
import 'package:chefgods/components/cart_class.dart';
import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/components/nav_bar.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  

  final colorclass = ColorClass();
  List CartList = <CartClass>[
    CartClass(
        name: 'Loaded Sweet123 Potato Fries',
        price: 5.45,
        portionQuantiy: 1,
        image: "food1.png",
        addOn: [
          AddOns(name: 'Extra Brocolli', price: 1.16),
          AddOns(name: 'Grilled Cheese', price: 1.16),
        ]
      ),
    CartClass(
        name: 'Loaded Sweet Potato Fries',
        price: 5.45,
        image: "food1.png",
        portionQuantiy: 1,
        addOn: [
          AddOns(name: 'Extra Brocolli', price: 1.16),
          AddOns(name: 'Grilled Cheese', price: 1.12),
          AddOns(name: 'Doughnut', price: 1.09),
          AddOns(name: 'Grilled Cheese', price: 0.54),
        ]
      ),
    CartClass(
        name: 'Loaded Sweet Potato Fries',
        price: 5.45,
        portionQuantiy: 1,
        image: "food1.png",
        addOn: [
          AddOns(name: 'Extra Brocolli', price: 1.16),
          AddOns(name: 'Grilled Cheese', price: 1.16),
        ]
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    		child: Scaffold(
          backgroundColor: colorclass.background,
    				bottomNavigationBar: BottomNavigation(),
    				body: SingleChildScrollView(
    				  child: Padding(
    				    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
    				    child: Column(
    				    		children: <Widget>[
    				                      Row(
    				                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    				                          children: <Widget>[
    				                                        GestureDetector(
    				                                          onTap: (){
    				  
    				                                              Navigator.pop(context);
    				  
    				                                            },
    				                                          child: Container(
    				                                              child: Icon(
    				                                                  Icons.arrow_back,
    				                                                  color: colorclass.secondary,
    				                                                ),
    				                                            ),
    				                                        ), 
    				  
    				                                        Text(
    				                                                'Cart', 
    				                                                style: TextStyle(
    				                                                    fontSize: 20,
    				                                                    color: colorclass.secondary,
    				                                                    fontFamily: 'inter',
    				                                                    fontWeight: FontWeight.w600
    				                                                  ),
    				                                            ), 
    				  
    				                                        Container(
    				                                            child: Icon(
    				                                                Icons.delete_sharp, 
    				                                                color: colorclass.secondary,
    				                                              ),
    				                                          ), 
    				  
    				                                      ],
    				                        ), 
    				  
    				                                  SizedBox(height: 20,),
    				  
    				                                  Container(
    				                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    				                                      child: Wrap(
    				                                          runSpacing: 20,
    				                                          children: CartList.map((items) => CartCard(name: items.name, price: items.price, image: items.image, addOns: items.addOn, portion: items.portionQuantiy,)).toList()
    				                                        ),
    				                                    )
    				    		],
    				    	),
    				  ),
    				),
    			),
    	);
  }
}