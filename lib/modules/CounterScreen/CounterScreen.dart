import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           title: Text(
             'Counter',
             style:TextStyle(
               fontSize: 20.0,
             )
           ),
         ),
         body: Center(
           child: Container(
             height: double.maxFinite,
             color: Colors.red,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 TextButton(
                     onPressed: ()
                     {
                       setState(() {
                         if(counter != 0) {
                           counter--;
                           print(counter);
                         }
                       });
                     },
                     child:Text(
                       'MINUS'
                     )
                 ),
                 Text(
                   '${counter}',
                   style: TextStyle(
                     fontSize:50.0,
                     fontWeight: FontWeight.bold
                   ),
                 ),
                 TextButton(
                     onPressed: ()
                     {
                       setState(() {
                         counter++;
                         print(counter);
                       });
                     },
                     child:Text(
                         'PLUS'
                     )
                 ),
               ],
             ),
           ),
         ),
    );
  }
}
