import 'package:buckx/Screens/Onboarding/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: TextButton(
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Color(0XFF888888),
                              fontWeight: FontWeight.w400),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ScreenTwo(), // Navigate to ScreenTwo
                            ),
                          );
                        },
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),
                    width: 15,
                    height: 5,
                  ),
                  SizedBox(width: 5), // Add some space between the containers
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    width: 15,
                    height: 5,
                  ),
                  SizedBox(width: 5), // Add some space between the containers
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    width: 15,
                    height: 5,
                  ),
                  SizedBox(width: 5), // Add some space between the containers
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    width: 15,
                    height: 5,
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 320,
                      child: Column(
                        children: [
                          Text(
                            "No More ",
                            style: TextStyle(
                              fontFamily: "Clash Grotesk",
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                          Text(
                            "Wallet Address",
                            style: TextStyle(
                              fontFamily: "Clash Grotesk",
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            // width: 350,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "Send and receive dollars instantly to anyone in the world, 24/7, with just an email address & phone number 💃 🕺",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Clash Grotesk",
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
                    SvgPicture.asset(
                      "assets/images/communication_transport.svg",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 170,
                      height: 56,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () {
                          // Add your function here
                        },
                        child: SvgPicture.asset(
                          "assets/images/Vector Stroke.svg",
                        ),
                      ),
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
