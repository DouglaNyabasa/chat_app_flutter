import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_application/services/auth/auth_service.dart';
import 'package:flutter_chat_application/services/chat/chart_services.dart';
import 'package:flutter_chat_application/widgets/my_drawer.dart';
import 'package:path/path.dart';

import '../../widgets/user_tile.dart';
import '../chat/chat_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [

        ],
      ),
      drawer: MyDrawer(),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList(){
    return StreamBuilder(
        stream: _chatService.getUserStream(),
        builder: (context,snapshot){
          if(snapshot.hasError){
           return const Text("Error");
          }
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Text("Loading ...");
          }
          
          return ListView(
            children: snapshot.data!.map<Widget>((userData) => _buildUserListItem(userData,context)).toList(),
          );
        });
  }

  // individual list tile for a user

   Widget _buildUserListItem(Map<String, dynamic> userData, BuildContext context) {
     // Safely access the email field with a default value
     String userEmail = userData["email"] ?? 'Unknown Email'; // Provide a default value

     return UserTile(
       text: userEmail,
       onTap: () {
         Navigator.push(
           context,
           MaterialPageRoute(
             builder: (context) => ChatPage(receivedEmail: userData['email']),
           ),
         );
       },
     );
   }

  // Widget _buildUserListItem(Map<String,dynamic> userData,BuildContext context){
  //   // for displaying all users except current user
  //
  //   return UserTile(text: userData["email"],
  //   onTap: (){
  //     Navigator.push(context,
  //         MaterialPageRoute(builder: (context)=> ChatPage(receivedEmail: userData['email'],)));
  //   },
  //   );
  // }

}
