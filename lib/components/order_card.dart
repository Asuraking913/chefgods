import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  
  final colorClass = ColorClass();

  String name;
  int time;
  double rating;
  String price;
  String image;

  OrderCard({

    required this.name,
    required this.time,
    required this.rating,
    required this.price, 
    required this.image 

    });


  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
          width: MediaQuery.of(context).size.width/2.5,
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
      							'$rating',
      							style: TextStyle(
      									color: colorClass.tertiary,
      									fontSize: 14,
      									fontFamily: 'inter'
      								),
      							), 
      					],
      				), 

      				Center(child: Image.asset('assets/image/${image}', width: 90, height: 90,)), 
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
                              padding: EdgeInsets.all(2),
                              decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2), // Shadow color
                                      spreadRadius: 3, // How much the shadow spreads
                                      blurRadius: 1, // How blurry the shadow is
                                      offset: Offset(0, 1), // Shadow position (horizontal, vertical)
                                    ),
                                  ]
                                ),
                                child: Center(
                                  child: Icon(
                                      Icons.add
                                    ),
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