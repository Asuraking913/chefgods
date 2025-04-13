import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {

  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
          color: colorClass.white,
          child: Row(
              children: <Widget>[
                Expanded(child: Image.asset('assets/image/food.jpg')),

                SizedBox(width: 20,),
      
                Column(
                    children: <Widget>[
                      Text('Fried Rice', style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 16, 
                          fontWeight: FontWeight.w600
                        ),),
                      Row(
                          children: <Widget>[
                            Icon(
                                Icons.access_time_sharp, 
                                color: colorClass.secondary,
                                size: 18,
                              ),
                            Text('15min, 15km', style: TextStyle(
                                color: colorClass.secondary,
                              ),)
                          ],
                        )
                    ],
                  )
      
              ],
            ),
        ),
    );
  }
}