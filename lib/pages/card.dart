import 'package:chefgods/components/nav_bar.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    		child: Scaffold(
    				bottomNavigationBar: BottomNavigation(),
    				body: Column(
    						children: <Widget>[

    						],
    					),
    			),
    	);
  }
}