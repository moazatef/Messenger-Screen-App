// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login_screen extends StatelessWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    var emailControl = TextEditingController();
    var passwordControl = TextEditingController();

    return  Scaffold(
      appBar: AppBar() ,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login',
                  style: TextStyle(
                    fontSize: 50.0 ,
                    fontWeight:FontWeight.bold,

                  ),
                ), //login text
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: emailControl,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value)
                  {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                    )
                  ),
                ), //email
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: passwordControl,
                  obscureText: true,
                  onFieldSubmitted: (value)
                  {
                    print(value);
                  },
                  onChanged: (value)
                  {
                    print(value);
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon:Icon(
                        Icons.lock,
                      ),
                    suffixIcon:Icon(
                      Icons.remove_red_eye,
                    ),



                  ),
                ), //password
                SizedBox(
                  height: 10.0,
                ),
                Container(

                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(onPressed: ()
                  {
                    print(emailControl.text);
                    print(passwordControl.text);
                  },child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    ),
                  ),),
                ), //login
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),


                  ),
                  TextButton(onPressed: (){}, child: Text(''
                      'Register',))

                ],)
              ],
            ),
          ),
        ),
      ),



    );
  }
}
