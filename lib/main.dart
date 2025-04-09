import 'package:chefgods/pages/order.dart';
import 'package:chefgods/pages/step_one.dart';
import 'package:chefgods/pages/step_two.dart';
import 'package:flutter/material.dart';
import 'package:chefgods/pages/loading.dart';
import 'package:chefgods/pages/home.dart';

void main () => runApp(

    MaterialApp(
        initialRoute: "/home",
        routes: {

            '/' : (context) => Loading(),
            '/order' : (context) => Order(),
            '/home' : (context) => HomePage(),
            '/step_one' : (context) => StepOne(),
            '/step_two' : (context) => StepTwo()
          }
      )
  );

