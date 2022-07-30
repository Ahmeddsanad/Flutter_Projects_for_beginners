import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/shared/component/components.dart';
// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  var EmailController = TextEditingController();
  // ignore: non_constant_identifier_names
  var PasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Container(
          alignment: Alignment.center,
          child: const Text(
            'LOGIN SCREEN',
                style:TextStyle(
              fontWeight:FontWeight.bold,
                  color:Colors.white
          )
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  const Center(
                    child:Text(
                      'Login',
                      style:TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  TextFormField(
                    controller: EmailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value){
                      if (kDebugMode) {
                        print(value);
                      }
                    },
                    onChanged: (value){
                      if (kDebugMode) {
                        print(value);
                      }
                    },
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Email Address Must be filled';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                     // hintText: 'Email Address',
                      labelText: 'Email Address',
                      prefixIcon: const Icon(
                          Icons.email
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: PasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (value){
                    },
                    onChanged: (value){
                      if (kDebugMode) {
                        print(value);
                      }
                      if (kDebugMode) {
                        print(value);
                      }
                    },
                    validator: (value){
                      if(value!.isEmpty) {
                        return 'Passowrd Must be Filled';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      // hintText: 'Email Address',
                      labelText: 'Password',
                      prefixIcon:  Icon(
                          Icons.lock
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DefaultButton(
                      function: (){},
                      text: 'Login',
                    radius: 40.0
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  DefaultButton(
                    isUpperCase: false,
                      function: (){
                        if (kDebugMode) {
                          print('Clicked Button');
                        }
                      },
                      text: 'Register',
                      radius: 40.0
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?'
                      ),
                      TextButton(
                          onPressed:(){

                          },
                          child:const Text(
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
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextEditingController>('EmailController', EmailController));
    properties.add(DiagnosticsProperty<TextEditingController>('PasswordController', PasswordController));
  }
}
