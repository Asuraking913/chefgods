import 'package:chefgods/components/colorClass.dart';
import 'package:flutter/material.dart';

class StepTwo extends StatelessWidget {
  
  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/image/deliver2.png'), 
                        SizedBox(height: 30,), 
                        Text('Hot & Fresh Delivery at Your Doorstep', textAlign: TextAlign.center, style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'inter', 
                            fontWeight: FontWeight.w900, 
                            color: colorClass.tertiary
                          ),), 
                        SizedBox(height: 10,), 
                        Text(
                          'Experience the joy of piping hot meals delivered quickly to your doorstep, Fresh ingredeients and flavors, right on time, every time', 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            fontSize: 13.5,
                            fontFamily: 'inter',
                            color: colorClass.secondary 
                          ),), 

                        SizedBox(height: 30,), 


                        TextButton(
                            onPressed: () {},
                            child: Text('Get Started'),
                            style: TextButton.styleFrom(
                                backgroundColor: colorClass.primary, 
                                foregroundColor: colorClass.background, 
                                minimumSize: Size(double.infinity, 45), 
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                  )
                              ),
                          ), 
                      ],
                    ),
                ),
              )
          ),
      );
  }
}