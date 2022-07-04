import 'package:flutter/material.dart';
import 'package:task1/reusableComp/myButton.dart';
import 'package:task1/uiScreens/register.dart';

import '../reusableComp/inputCountryCode.dart';

class loginForm extends StatelessWidget {

   loginForm({Key? key}) : super(key: key);

   final formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Flexible(
                  flex: 1,
                  child: Image(
                    image: AssetImage("images/gift.png"),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  child: SingleChildScrollView(
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
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Sign in",
                              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 200,
                          ),
                          Row(
                            children:  [
                              Text(
                                "Help",
                                style: TextStyle(color: Colors.blue),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Icon(Icons.help,color: Colors.blue,)
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Phone Number")),
                      ),
                      countryCode(),
                      myButton(
                          buttonText: "Sign in",
                          fontButtonColor: Colors.white,
                          backgroundColor: Colors.blue,
                        formKey: formKey,

                      ),
                      Text(
                        "or",
                        style: TextStyle(fontSize: 20, color: Colors.black38),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: OutlinedButton(
                          onPressed: () {
                          },
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
                                  child: Text(
                                    "Sign in with google",
                                    style: TextStyle(fontSize: 18),
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
                                  "Doesn't have any account? ",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=>register()
                                    ));
                                  },
                                  child: Text(
                                    "Register Here",
                                    style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                                  ),
                                )
                              ])),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Use the application accordingto the police rules. Any kinds of violations will be subject to sanctions.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black54),
                        ),
                      )
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
