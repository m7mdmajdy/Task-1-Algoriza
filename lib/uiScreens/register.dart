import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task1/reusableComp/inputCountryCode.dart';
import 'package:task1/reusableComp/myButton.dart';
import 'package:task1/reusableComp/textField.dart';

import 'login.dart';

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: InkWell(onTap:(){
              Navigator.pop(context,true);
            },child: Icon(Icons.arrow_back_ios)),
            toolbarHeight: 70,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/gift.png"),
                fit: BoxFit.cover,
              )),
            ),
          ),
          body: Column(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                        top: 20,
                        bottom: 10,
                      ),
                      child: Flexible(
                        flex: 1,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: (Text(
                              "Welcome to fashion daily",
                              style: TextStyle(color: Colors.black54),
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                "Help",
                                style: TextStyle(color: Colors.blue),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue, shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.question_mark,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Email")),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: textField(hint: "Eg. example@email.com",),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top:20.0,left: 15),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Phone Number")),
                    ),
                    Stack(
                      children: [
                        countryCode()
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Email")),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: textField(hint: "Eg. example@email.com",),
                    ),
                    myButton(buttonText: "Register", fontButtonColor: Colors.white, backgroundColor: Colors.blue),
                    Text(
                      "or",
                      style: TextStyle(fontSize: 20, color: Colors.black38),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.blue),
                          shadowColor: Colors.red,
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                child: Image.asset("images/google.png"),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: GestureDetector(onTap: (){
                                  Navigator.pop(context,true);
                                },
                                  child: Text(
                                    "Sign in with google",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account? ",
                                style: TextStyle(color: Colors.black54),
                              ),
                              GestureDetector(onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>loginForm()
                                ));
                              },
                                child: Text(
                                  "Sign in here",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ])),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "By registering your account, you are agree to our",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    Text(
                      "terms and condtions",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue),
                    )
                  ]),
                ),
              )
            ],
          )),
    );
  }
}
