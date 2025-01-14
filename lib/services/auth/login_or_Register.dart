import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_application/services/auth/register_page.dart';

import 'login_page.dart';


class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  bool showLoginPage = true;

  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return Loginpage(
        onTap: togglePages,
      );
    }else{
      return RegisterPage(
        onTap: togglePages,);
    }
  }
}
