import 'package:chefgods/components/cart_card.dart';
import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/components/nav_bar.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  

  final colorclass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    		child: Scaffold(
          backgroundColor: colorclass.background,
    				bottomNavigationBar: BottomNavigation(),
    				body: Padding(
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
                                        children: [
                                          CartCard(),
                                          CartCard(),
                                          CartCard(),
                                        ],
                                      ),
                                  )
    				  		],
    				  	),
    				),
    			),
    	);
  }
}