import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final colorclass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    	backgroundColor: colorclass.white,
    		items: [
    			BottomNavigationBarItem(
    					icon: Icon(Icons.home, color: colorclass.primary,),
    					label: "Home",
    					backgroundColor: colorclass.white
    				), 
    			BottomNavigationBarItem(
    					icon: Icon(Icons.bike_scooter, color: colorclass.primary,),
    					label: "Pick up",
    					backgroundColor: colorclass.white
    				), 

    			BottomNavigationBarItem(
    					icon: Icon(Icons.search, color: colorclass.primary,),
    					label: "Search",
    					backgroundColor: colorclass.white
    				), 

    		],
    	);
  }
}