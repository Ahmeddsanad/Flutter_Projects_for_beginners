import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen2 extends StatelessWidget {
var EmailController = TextEditingController();
var PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu
        ),
        title:Text(
          'Login Screen',
              style:TextStyle(
                fontWeight: FontWeight.w800,
                textBaseline: TextBaseline.alphabetic,
        )
        )
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'LOGIN',
                    style:TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: EmailController,
                   keyboardType: TextInputType.emailAddress,
                   onFieldSubmitted: (value){
                     print(value);
                   },
                  onChanged: (value){
                     print(value);
                  },
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: (
                     'Email Address'
                     ),
                     prefixIcon: Icon(
                       Icons.email
                     )
                   ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: PasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  onChanged: (value){
                    print(value);
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: (
                          'Password'
                      ),
                      prefixIcon: Icon(
                          Icons.lock
                      ),
                      suffixIcon: Icon(
                      Icons.remove_red_eye,
                    )
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  color:Colors.blue,

                  child: MaterialButton(
                      onPressed:(){
                        print(EmailController);
                        print(PasswordController);
                      },
                      child: Text(
                        'Login',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an acoount?'
                    ),
                    TextButton(
                        onPressed: (){
                        },
                        child: Text(
                          'Register',
                          style:TextStyle(
                            color:Colors.blue,
                          )
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
