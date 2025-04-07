import 'package:chefgods/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:chefgods/pages/loading.dart';

void main () => runApp(

    MaterialApp(
        initialRoute: "/",
        routes: {

            '/' : (context) => Loading(),
            '/home' : (context) => Homepage(),
          }
      )
  );

