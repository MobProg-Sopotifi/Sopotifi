import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage.dart';
import 'package:flutter_app/MenuNavigation.dart';
import 'package:flutter_app/Navigator/Forget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
          child: Column(
            children: [

              //Email and TextField
              Column(
                children: [

                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Email or username',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                            right: Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //Password and TextField
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                            right: Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuScreen(),
                        ));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(50, 10, 50, 10)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(30),
                          right: Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Forget(),
                        ));
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(50, 10, 50, 10)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(30),
                          right: Radius.circular(30),
                        ),
                      ),
                    ),

                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
