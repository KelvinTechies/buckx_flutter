import 'package:buckx/Screens/Onboarding/screen_five.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
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
                                  ScreenFive(), // Navigate to ScreenTwo
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
                  SizedBox(width: 5), // Add some space between the containers
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
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
                      width: 370,
                      child: Column(
                        children: [
                          Text(
                            "Built Securely  ",
                            style: TextStyle(
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            " on Solana",
                            style: TextStyle(
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                            textAlign: TextAlign.center,
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
                                    "A secure, super simple USDC wallet. You don’t even have to care that it is built with crypto technology under the hood 🔐",
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
                      height: 50,
                    ),
                    SvgPicture.asset(
                      "assets/images/secure_solana.svg",
                    ),
                    SizedBox(
                      height: 50,
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
