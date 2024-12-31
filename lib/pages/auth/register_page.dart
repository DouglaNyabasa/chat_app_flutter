import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_button.dart';
import '../../widgets/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
   RegisterPage({super.key, required this.onTap});

  void register(){}

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
            Text("Lets Create An Account For You!!!"),
            SizedBox(height: 25),
            MyTextfield(hintText: 'Email', obscureText: false, controller: _emailController,),
            SizedBox(height: 15),
            MyTextfield(hintText: 'Password', obscureText: true, controller: _passwordController,),
            SizedBox(height: 15),
            MyTextfield(hintText: 'Confirm Password', obscureText: true, controller: _confirmPasswordController,),
            SizedBox(height: 25),
            MyButton(text: 'Register',
              onTap: register,),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account? ", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
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
