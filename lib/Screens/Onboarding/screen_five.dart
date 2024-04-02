import 'package:buckx/Screens/BackUpWallet/backup_wallet.dart';
import 'package:buckx/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({Key? key}) : super(key: key);

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  bool _loading = false;

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
              SizedBox(height: 30),
              Container(
                width: 132,
                height: 35,
                decoration: BoxDecoration(
                  color: Color(0X0FFEEE0FF),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to backup screen when "Get Started" button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BackUpWallet()),
                    );
                  },
                  child: Text(
                    textAlign: TextAlign.center,
                    "Get Started",
                    style: TextStyle(
                      fontFamily: "ClashGrotesk",
                      color: Color(0X0FF563380),
                    ),
                  ),
                ),
              ),
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
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            " Seed Phrases",
                            style: TextStyle(
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
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
                    SizedBox(height: 10),
                    Image.asset("assets/images/security_lock_key.png"),
                    SizedBox(height: 30),
                    Container(
                      width: 361,
                      height: 60,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: _loading ? null : _signInWithGoogle,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/google-logo-9808 1.png",
                              height: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              textAlign: TextAlign.center,
                              "Sign in with Google",
                              style: TextStyle(
                                fontFamily: "ClashGrotesk",
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
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

  void _signInWithGoogle() {
    setState(() {
      _loading = true;
    });

    AUthService().signInWithGoogle().then((_) {
      // Sign-in completed, navigate to backup screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BackUpWallet()),
      );
    }).catchError((error) {
      // Handle sign-in error
      setState(() {
        _loading = false;
      });
      // Show error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to sign in with Google: $error'),
          backgroundColor: Colors.red,
        ),
      );
    });
  }
}
