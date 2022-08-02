import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/shared/component/components.dart';
// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ignore: non_constant_identifier_names
  var EmailController = TextEditingController();

  // ignore: non_constant_identifier_names
  var PasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

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
                  DefaultFormField(
                    Controller: EmailController,
                    label: 'Email Address',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validated: (String value){
                      if(value.isEmpty){
                        return 'Email Address Must Be Filled';
                      }
                      return null;
                    }
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  DefaultFormField(
                      Controller: PasswordController,
                      label: 'Your Password',
                      prefix: Icons.lock,
                      type: TextInputType.visiblePassword,
                      isPassword: isPassword,
                      Suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                      suffixPressed: (){
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      validated: (String value){
                        if(value.isEmpty){
                          return 'Password Must Be Filled';
                        }
                        return null;
                      }
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DefaultButton(
                      function: (){
                        if(formKey.currentState!.validate()){
                          if (kDebugMode) {
                            print(EmailController.text);
                          }
                          if (kDebugMode) {
                            print(PasswordController.text);
                          }
                        }
                      },
                      text: 'Login',
                      radius: 40.0,
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
