import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task1/reusableComp/myButton.dart';
import 'package:task1/uiScreens/login.dart';
import 'package:task1/uiScreens/onboardingScreen/bordingInfo.dart';
import 'package:task1/uiScreens/register.dart';


class MyStatelessWidget extends StatelessWidget {
  final controller = PageController();
  final formKey = GlobalKey<FormState>();

  @override
  MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => loginForm()
                              ));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xfffaf4e7)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))))),
              ),
            ),
            Container(
              height: 480,
              child: PageView.builder(
                controller: controller,
                itemCount: 3,
                itemBuilder: (BuildContext context, int itemIndex) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                            height: 300,
                            child: Image(
                                image: AssetImage(
                                    content[itemIndex].image.toString()))),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text(
                            content[itemIndex].title.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),
                          ),
                        ),
                        Text(content[itemIndex].disc.toString(),
                        textAlign: TextAlign.center,
                          style: TextStyle(color:Colors.black54,fontSize: 15,fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                    spacing: 5,
                    radius: 5,
                    dotHeight: 5,
                    dotColor: Colors.black26,
                    activeDotColor: Colors.orangeAccent),
              ),
            ),
            myButton(
              formKey: formKey,
              buttonText: "Get Started",
              fontButtonColor: Colors.white,
              clickCallback: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>loginForm()
                ));
              },
              backgroundColor: Colors.teal,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text(
                "Don't have account?",
                style: TextStyle(fontSize: 20),
              ),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>register()
                ));
              },
                child: Text(
                  " Sign up",
                  style: TextStyle(fontSize: 20, color: Colors.teal),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
