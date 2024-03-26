import 'package:buckx/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  width: 132,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Color(0X0FFEEE0FF),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          color: Color(0X0FF563380),
                        ),
                      ))),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 370,
                      child: Column(
                        children: [
                          Text(
                            "No More ",
                            style: TextStyle(
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            " Seed Phrases",
                            style: TextStyle(
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "Let’s get you started! Sign in with your Google account and back up wallet your key to Drive or iCloud 🛡📤",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "ClashGrotesk",
                                      color: Color(0XFF2A2A2A),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/images/security_lock_key.png"),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 361,
                      height: 60,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            // Add your function here
                            AUthService().signInWithGoogle();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  height: 20,
                                  "assets/images/google-logo-9808 1.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Sign in with Google",
                                style: TextStyle(
                                    fontFamily: "ClashGrotesk",
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
