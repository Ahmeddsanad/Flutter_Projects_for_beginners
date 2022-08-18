import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class t1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Colors.teal,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 50.0,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Hello There access with your account',
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 16.0
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                      decoration: InputDecoration(
                        labelText: (
                        'Email Address'
                        ),
                        border:OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.email,
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: (
                        'Password'
                        ),
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.blueGrey[400],
                      child: TextButton(
                          onPressed: (){
                            print('You Clicked The Login Button');
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 20.0,
                              color:Colors.teal,
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Forgetten The Password?',
                        ),
                        TextButton(
                            onPressed: (){
                              print('Forget The password');
                            },
                            child: Text(
                              'Reset Your Password',
                              style: TextStyle(
                                color:Colors.grey
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
