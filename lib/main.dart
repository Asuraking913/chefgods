import 'package:chefgods/pages/home.dart';
import 'package:chefgods/pages/step_one.dart';
import 'package:chefgods/pages/step_two.dart';
import 'package:flutter/material.dart';
import 'package:chefgods/pages/loading.dart';

void main () => runApp(

    MaterialApp(
        initialRoute: "/step_one",
        routes: {

            '/' : (context) => Loading(),
            '/home' : (context) => Homepage(),
            '/step_one' : (context) => StepOne(), 
            '/step_two' : (context) => StepTwo()
          }
      )
  );

