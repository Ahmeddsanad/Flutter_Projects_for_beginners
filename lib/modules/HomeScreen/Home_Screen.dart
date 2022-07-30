import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.teal,
           leading: Icon(
             Icons.menu,
           ),
           title:Text("First App"),
           actions: [
             IconButton(
               icon:Icon(
                   Icons.notification_important
               ),
               onPressed: (){
                 print("You Clicked On Notification Icon") ;
               },
             ),
             IconButton(
               icon:Icon(
                   Icons.search),
               onPressed: (){
                 print("You Clicked on Search Button");
               },
             ),
           ],
         ),
         body : Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(50.50),
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(
                     20.0
                      ),
                   ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                   alignment: Alignment.bottomCenter,
                   children: [
                     Image(
                       width: 250,
                       height: 250,
                       fit: BoxFit.cover,
                       image: NetworkImage(
                         'https://images.unsplash.com/photo-1520587210458-bd3bee813b97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZG9kZ2V8ZW58MHx8MHx8&w=1000&q=80'
                       ),
                     ),
                     Container(
                       width: 250,
                       color: Colors.white.withOpacity(0.4),
                       padding: EdgeInsets.symmetric(
                         vertical: 10.0,
                       ),
                       // padding: EdgeInsetsVertical.only(
                       //   top : 10.0,
                       //   end : 10.0,
                       // ),
                       child: Text(
                         'Dodge Challenger',
                         textAlign: TextAlign.center,
                         style:TextStyle(
                           fontSize: 16.0,
                           color: Colors.white,
                         )
                       ),
                     )
                   ],
                 ),
               ),
             ),
           ],
         )

       );
  }
}