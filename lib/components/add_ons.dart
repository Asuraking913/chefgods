import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class AddOn extends StatelessWidget {
  final colorclass = ColorClass();
  final String name;
  final double price; 

  AddOn({

  		required this.name, 
  		required this.price

  	});

  @override
  Widget build(BuildContext context) {
    return Container(
    		margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: colorclass.secondary),
                borderRadius: BorderRadius.circular(20)
              ),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                  '$name \$$price'
                ),
            );
}
}