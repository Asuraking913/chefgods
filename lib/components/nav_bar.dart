import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigation extends ConsumerWidget {
  
  final colorclass = ColorClass();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int current_index = ref.watch(providerName); 
    
    return BottomNavigationBar(
      onTap: (index){
          ref.read(providerName.notifier).state = index;


          switch (index){

            case 0:
              Navigator.pushNamed(context, "/home");
              break;
            case 1:
              Navigator.pushNamed(context, '/order');
              break;
            case 2:
              Navigator.pushNamed(context, '/search');
              break;
            case 3: 
              Navigator.pushNamed(context, '/cart');
              break;

          }
        },
      currentIndex: current_index,
      
      selectedItemColor: colorclass.primary,
      selectedFontSize: 16,
      unselectedFontSize: 12,
      unselectedItemColor: colorclass.secondary,
      type: BottomNavigationBarType.fixed,
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
              label: "Cart",
              backgroundColor: colorclass.white
            ), 
        ],
      );
  }
}
