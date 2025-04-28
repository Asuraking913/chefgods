import 'package:chefgods/pages/cart.dart';
import 'package:chefgods/pages/login_signup.dart';
import 'package:chefgods/pages/order.dart';
import 'package:chefgods/pages/search.dart';
import 'package:chefgods/pages/step_one.dart';
import 'package:chefgods/pages/step_two.dart';
import 'package:flutter/material.dart';
import 'package:chefgods/pages/loading.dart';
import 'package:chefgods/pages/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final providerName = StateProvider<int>((ref) => 0);

void main () => runApp(

    ProviderScope(
      child: MaterialApp(
          initialRoute: "/cart",
          routes: {
      
              '/' : (context) => Loading(),
              '/order' : (context) => Order(),
              '/home' : (context) => HomePage(),
              '/step_one' : (context) => StepOne(),
              '/step_two' : (context) => StepTwo(),
              '/search' : (context) => SearchPage(),
              '/auth' : (context) => LoginOrRegisterPage(), 
              '/cart' : (context) => CartPage()
            }
        ),
    )
  );

