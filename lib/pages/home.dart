import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/components/nav_bar.dart';
import 'package:chefgods/components/pickUp.dart';
import 'package:chefgods/components/pickup_template.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  
  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigation(),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                    children: <Widget>[
                      Row(
                          children: <Widget>[
                            Text('Track Your Order', 
                              style: TextStyle(
                                color: colorClass.tertiary, 
                                fontSize: 20, 
                                fontWeight: FontWeight.w800, 
                                fontFamily: 'inter'
                              ),), 

                            Spacer(),

                            Icon(
                                Icons.gps_fixed
                              )


                          ],
                        ), 

                      SizedBox(height: 20,),

                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: colorClass.white,
                              borderRadius: BorderRadius.circular(25)
                              ),
                            child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                                 child: Image.asset('assets/image/map2.jpeg', fit: BoxFit.cover,)   ,
                            ),
                          )
                      ), 

                      Pickup(), 

                      Pickuptemplate(
                        option: 'Your Address', 
                        value: '1500 Broadway Ave, New York',
                        third: "NY 10036",
                        icon: Icons.location_on_outlined,
                        ), 
                      Pickuptemplate(
                        option: 'Delivery Team', 
                        value: '30 Minutes',
                        icon: Icons.access_time_sharp,
                        )

                    ],
                  ),
              ),
          ),
      );
  }
}