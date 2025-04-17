import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/components/login.dart';
import 'package:chefgods/components/register.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {

	final colorClass = ColorClass();	
	bool isLogin = true;

  void onRoute() {
    setState(() {
          isLogin = !isLogin;
          print(isLogin);
        });
  }

  @override
  Widget build(BuildContext context) {
    if(isLogin) {
    	return LoginPage(onTap: onRoute);
    }
    else{
    	return RegisterPage(onTap: onRoute);
    }
  }
}