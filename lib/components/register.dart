import 'package:flutter/material.dart';
import 'package:chefgods/components/button_class.dart';
import 'package:chefgods/components/colorClass.dart';
import 'package:chefgods/components/textfield_class.dart';

class RegisterPage extends StatefulWidget {
  
  final Function()? onTap;

  RegisterPage({

      this.onTap 

    });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final colorClass = ColorClass();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    		child: Scaffold(
    				body: SingleChildScrollView(
    				  child: Container(
    				  	color: colorClass.background,
    				                    padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),    				  child: Column(
    				    		mainAxisAlignment: MainAxisAlignment.center,
    				    		children: [
    				  
    				    			Image.asset('assets/image/chefhat.png'), 
    				  
    				    			Padding(
    				    			  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
    				    			  child: Text('Chefgods', style: TextStyle(color: colorClass.primary,fontSize: 25, fontFamily: 'inter', fontWeight: FontWeight.w600),),
    				    			),
    				    				SizedBox(height: 20,),
    				  
    				    				ClassTextfieldClass(hintText: 'Email...',),
    				  
    				    				SizedBox(height: 10,),
    				  
    				    				ClassTextfieldClass(hintText: 'Password...',),
    				  
    				                            SizedBox(height: 10,),
    				  
    				                            ClassTextfieldClass(hintText: 'Confirm Password',),
    				  
    				    				SizedBox(height: 20,),
    				  
    				    				ClassButtonClass(label: 'Sign Up', onTap: () {}),
    				    				SizedBox(height: 10,),
    				  
    				  
    				  
    				    				Row(
    				    					mainAxisAlignment: MainAxisAlignment.center,
    				    					children: <Widget>[
    				    						Text('Already registered?', style: TextStyle(
    				    								color: colorClass.secondary,
    				    							),), 
    				    						SizedBox(width: 10,),
    				    						GestureDetector(
    				    								onTap: () {
    				  
    				                                        widget.onTap!();
    				  
    				                                      },
    				    								child: Container(
    				    										child: Text('Register', style: TextStyle(
    				    												fontFamily: 'inter',
    				    												color: colorClass.primary,
    				    												fontWeight: FontWeight.w600, 
    				    												decoration: TextDecoration.underline, 
    				    												decorationColor: colorClass.primary
    				    											),),
    				    									),
    				    							)
    				    					],
    				    					)
    				    			],
    				    	),
    				  ),
    				),
    			),
    	);
  }
}