import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/BMIResultScreen.dart';

class bmiScreen extends StatefulWidget {
  @override
  State<bmiScreen> createState() => _bmiScreenState();
}

class _bmiScreenState extends State<bmiScreen> {
  bool isMale = true ;
  double height = 120.0;

  int weight = 40 ;
  int age = 20 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true ;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/male.png'
                              ),
                              height: 90.0,
                              width: 90.0,
                            ),
                            Text(
                              'MALE',
                              style:TextStyle(
                                color:Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              )
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.red : Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/female.png'
                              ),
                              height: 90.0,
                              width: 90.0,
                            ),
                            Text(
                                'FEMALE',
                                style:TextStyle(
                                  color:Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                )
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale ? Colors.red : Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  children: [
                    Text(
                        'HEIGHT',
                        style:TextStyle(
                          color:Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                            '${height.round()}',
                            style:TextStyle(
                              color:Colors.black,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            )
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                            'CM',
                            style:TextStyle(
                              color:Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )
                        )
                      ],
                    ),
                    Slider(
                        value: height,
                        min: 80.0,
                        max: 220.0,
                        activeColor: Colors.red,
                        onChanged: (value){
                          setState(() {
                            height = value ;
                          });
                          print(value.round());
                        }
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color:Colors.grey[400],
                ),
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'AGE',
                              style:TextStyle(
                                color:Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          Text(
                              '$age',
                              style:TextStyle(
                                color:Colors.black,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                child: Icon(
                                  Icons.remove
                                ),
                                backgroundColor: Colors.red,
                                  mini:true,
                                  onPressed:(){
                                  setState(() {
                                    if(age != 0)
                                    age--;
                                  });
                                  },
                                heroTag: 'age-',
                              ),
                              FloatingActionButton(
                                  child: Icon(
                                      Icons.add
                                  ),
                                  backgroundColor: Colors.red,
                                  mini:true,
                                  onPressed:(){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                heroTag: 'age+',
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color:Colors.grey[400],
    ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'WEIGHT',
                              style:TextStyle(
                                color:Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          Text(
                              '$weight',
                              style:TextStyle(
                                color:Colors.black,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  child: Icon(
                                      Icons.remove
                                  ),
                                  backgroundColor: Colors.red,
                                  mini:true,
                                  onPressed:(){
                                    setState(() {
                                      if(weight != 0)
                                        weight--;
                                    });
                                  },
                                heroTag: 'weight-',
                              ),
                              FloatingActionButton(
                                  child: Icon(
                                      Icons.add
                                  ),
                                  backgroundColor: Colors.red,
                                  mini:true,
                                  onPressed:(){

                                    setState(() {
                                      weight++;
                                    });
                                  },
                                heroTag: 'weight+',
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Container(
            width: double.infinity,
            color:Colors.red,
            child: MaterialButton(
              height: 50.0,
                onPressed: (){
                  double result = weight / pow(height / 100, 2);
                  print(result.round());

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResultScreen(
                            result: result.round(),
                            age: age,
                            isMale: isMale
                        ),
                    ),
                );
                },
              child: Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
