import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_application/pages/auth/auth_service.dart';
import 'package:flutter_chat_application/widgets/my_button.dart';
import 'package:flutter_chat_application/widgets/my_textfield.dart';

class Loginpage extends StatelessWidget {
  final void Function()? onTap;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
   Loginpage({super.key, required this.onTap});

   void login(){
     // final authService = AuthService();

   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Icon(Icons.message_outlined,
           color: Theme.of(context).colorScheme.primary,
           size: 60,),
           SizedBox(height: 50),
           Text("Welcome Back you have been Missed !!!"),
           SizedBox(height: 25),
           MyTextfield(hintText: 'Email', obscureText: false, controller: _emailController,),
           SizedBox(height: 15),
           MyTextfield(hintText: 'Password', obscureText: true, controller: _passwordController,),
           SizedBox(height: 25),
           MyButton(text: 'Login',
           onTap: login,),
           SizedBox(height: 25),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Not a member? ", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
               GestureDetector(
                 onTap: onTap,
                   child:
                   Text("Register now",
                     style: TextStyle(color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold),))
             ],
           )
         ],
       ),
     ),
    );
  }
}
