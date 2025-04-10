import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  
  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
      		padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: colorClass.white,
              borderRadius: BorderRadius.circular(10)
            ),
      		child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      			children: <Widget>[
      				Row(
      					mainAxisAlignment: MainAxisAlignment.end,
      					children: <Widget>[
      						Icon(
      								Icons.star, 
      								color: colorClass.primary,
      								size: 16,
      							),
      						Text(
      							'4.7',
      							style: TextStyle(
      									color: colorClass.tertiary,
      									fontSize: 14,
      									fontFamily: 'inter'
      								),
      							), 
      					],
      				), 

      				Center(child: Image.asset('assets/image/food1.png', width: 90, height: 90,)), 
              Text('Pizza', style: TextStyle(
                  color: colorClass.tertiary,
                  fontWeight: FontWeight.w500, 
                ),),
              // TextButton.icon(
              //     label: Text('24 min', style: TextStyle(color: colorClass.secondary),),
              //     icon: Icon(
              //         Icons.access_time_sharp, 
              //         color: colorClass.secondary,
              //       ),
              //     onPressed: () {},
              //   )
              SizedBox(height: 5,),
              Row(
                  children: <Widget>[
                    Icon(
                        Icons.access_time_sharp,
                        color: colorClass.secondary,
                        size: 20,
                      ),
                    SizedBox(width: 5,),
                    Text('24min', style:  TextStyle(
                        color: colorClass.secondary,
                        fontFamily: 'inter'
                      ),),
                    
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                      children: [
                        Positioned(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration:  BoxDecoration(
                                  boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), // Shadow color
                                      spreadRadius: 3, // How much the shadow spreads
                                      blurRadius: 7, // How blurry the shadow is
                                      offset: Offset(0, 3), // Shadow position (horizontal, vertical)
                                    ),
                                  ]
                                ),
                                child: Icon(
                                    Icons.add
                                  ),
                              ),
                          )
                      ],
                    ),
                ],
              ),
              SizedBox(height: 5,),
                    Text('\$4.56', style:  TextStyle(
                    color: colorClass.tertiary,
                    fontFamily: 'inter', 
                    fontSize: 15, 
                    fontWeight: FontWeight.w600
              ),)
      			],
      		),
      	),
    );
  }
}