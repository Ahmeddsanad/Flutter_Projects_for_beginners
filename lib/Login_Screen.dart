import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Made By Ahmed Sanad',
                style:TextStyle(
              fontWeight:FontWeight.bold,
                  color:Colors.black.withOpacity(0.2)
          )
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  )
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
                   // hintText: 'Email Address',
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                        Icons.email
                    ),
                    border: OutlineInputBorder(

                    ),
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
                    // hintText: 'Email Address',
                    labelText: 'Password',
                    prefixIcon: Icon(
                        Icons.lock
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(

                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.3),
                  child: MaterialButton(
                    onPressed: (){
                         print(EmailController.text);
                         print(PasswordController.text);
                    },
                    child: Text(
                      'LOGIN',
                      style:TextStyle(
                        fontSize: 15.0,
                        color: Colors.white
                      )
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?'
                    ),
                    TextButton(
                        onPressed:(){

                        },
                        child:Text(
                          'Register Now'
                        ),
                    ),
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
