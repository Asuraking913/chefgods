import 'dart:ffi';

import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {

  final colorClass = ColorClass();
  final String name;
  final String time;
  final String price;
  final String image;

  Recommended({

    required this.name, 
    required this.time, 
    required this.price, 
    required this.image

    });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
          padding: EdgeInsets.all(4),
          color: colorClass.white,
          child: Row(
              children: <Widget>[
                ClipRect(
                    child: Align(
                        alignment: Alignment.topCenter,
                        widthFactor: 1,
                        child: Image.asset('assets/image/${image}', height: 120,),
                      ),
                  ),

                SizedBox(width: 20,),
      
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Fried Rice', style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 14, 
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
                                fontSize: 14
                              ),)
                          ],
                        ), 


                      Container(
                          child: Row(
                              children: [
                                Text('30\$', style: TextStyle(
                                    fontWeight: FontWeight.w600, 
                                  ),), 
                                SizedBox(width: 20,),
                                TextButton.icon(
                                    label: Text('Add', style: TextStyle(
                                      color: colorClass.tertiary, 
                                      ),),
                                    icon: Icon(
                                        Icons.add, 
                                        color: colorClass.tertiary,
                                      ),
                                    onPressed: () {},
                                  )
                              ],
                            ),
                        )
                    ],
                  )
      
              ],
            ),
        ),
    );
  }
}