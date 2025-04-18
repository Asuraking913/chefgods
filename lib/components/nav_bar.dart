import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/main.dart';
import 'package:chefgods/pages/home.dart';
import 'package:chefgods/pages/order.dart';
import 'package:chefgods/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigation extends ConsumerWidget {
  final colorclass = ColorClass();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current_index = ref.watch(providerName);
    return BottomNavigationBar(
      currentIndex: current_index,
      selectedFontSize: 16 ,
      selectedItemColor: colorclass.primary,
      unselectedFontSize: 16,
      unselectedItemColor: colorclass.secondary,
      onTap: (index){
          ref.watch(providerName.notifier).state = index;
          switch(index) {

            case 0:
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HomePage()
                )); 
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Order()
                )); 
            case 2:
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SearchPage()
                )); 

          }
        },
    	backgroundColor: colorclass.white,
    		items: [
    			BottomNavigationBarItem(
    					icon: Icon(Icons.home, color: colorclass.primary,),
    					label: "Home",
    					backgroundColor: colorclass.white, 
    				), 
    			BottomNavigationBarItem(
    					icon: Icon(Icons.bike_scooter, color: colorclass.primary,),
    					label: "Order",
    					backgroundColor: colorclass.white
    				), 

    			BottomNavigationBarItem(
    					icon: Icon(Icons.search, color: colorclass.primary,),
    					label: "Search",
    					backgroundColor: colorclass.white
    				), 
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined, color: colorclass.primary,),
              label: "Search",
              backgroundColor: colorclass.white
            ), 

    		],
    	);
  }
}