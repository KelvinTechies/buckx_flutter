import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import "package:buckx/utils/apps.dart";

class BackUpWallet extends StatefulWidget {
  const BackUpWallet({Key? key}) : super(key: key);

  @override
  State<BackUpWallet> createState() => _BackUpWalletState();
}

String solAddr = 'HN7cABqLq46Es1jh92dQQisAq662SmxELLLsHHe4YWrH';
final banks = [
  'First Bank',
  'Gt Bank',
  'Fidelity Bank',
  'Zenith Bank',
  'Uba Bank',
  'Access Bank'
];

bool truthy = false;
String shortenedText = shortenWithAsterisks(solAddr, 15);

class _BackUpWalletState extends State<BackUpWallet> {
  @override
  void initState() {
    super.initState();

    // _navigateToOnBoardingScreen();
    /*  WidgetsBinding.instance!.addPostFrameCallback((_) {
      _navigateToOnBoardingScreen();
    }); */
  }

  _viewWalletAddress() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          actions: [
            Container(
              width: 220,
              height: 56,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0x0FFC3C3C3),
                      width: 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(100)),
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pop();
                    _copyTextToClipboard(shortenedText);
                  },
                  child: Text(
                    "Copy wallet address",
                    style: TextStyle(
                        fontFamily: "ClashGrotesk",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0X0FF000000)),
                  )),
            ),
          ],
          title: Column(
            children: [
              Text(
                "Your USDC Address",
                style: TextStyle(
                    fontFamily: "ClashGrotesk",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0X0FF000000)),
              ),
              Text(
                "on Solana",
                style: TextStyle(
                    fontFamily: "ClashGrotesk",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0X0FF53524F)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 230,
                height: 230,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/qrcode.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                shortenedText,
                style: TextStyle(
                    fontFamily: "ClashGrotesk",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0X0FF53524F)),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        );
      },
    );
  }

  _sendToUser() {
    Navigator.pop(context);
    // Future.delayed(Duration(milliseconds: 1500));
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            width: 361,
            // height: 04,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Image.asset("assets/images/money_smile.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Request Funds',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0X0FF000000),
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                          Container(
                            width: 20,
                            height: 20,
                            child: TextButton(
                              onPressed: () {
                                // Close the bottom sheet when the button is pressed
                                Navigator.pop(context);
                              },
                              child: FaIcon(FontAwesomeIcons.close),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0X0FFD0FCEA)),
                              child: Center(
                                  child:
                                      Image.asset("assets/images/Letter.png")),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "odusoviasuyi@gmail.com",
                              style: TextStyle(
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "\$345",
                              style: TextStyle(
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 50,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "Your Bucx wallet can be restored on any phone if a backup is saved and you are signed with the Google account associated with your wallet.",
                              style: TextStyle(
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0x0FF14F195),
                                  borderRadius: BorderRadius.circular(100)),
                              width: 321,
                              height: 56,
                              child: ElevatedButton(
                                  onPressed: null,
                                  child: Text(
                                    "Backup Now",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0X0FF000000),
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w500),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  _requestButton() {
    // Future.delayed(Duration(milliseconds: 1500));
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            width: 361,
            // height: 04,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Image.asset("assets/images/money_smile.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Request Funds',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0X0FF000000),
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                          Container(
                            width: 15,
                            height: 15,
                            child: TextButton(
                              onPressed: () {
                                // Close the bottom sheet when the button is pressed
                                Navigator.pop(context);
                              },
                              child: FaIcon(FontAwesomeIcons.close),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 320,
                                  // height: 20,

                                  /*  width: 202,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        color: Color(0X0FFD5B2FF),
                                        border: Border.all(
                                            style: BorderStyle.solid,
                                            color: Colors.black,
                                            width: 1),
                                        borderRadius: BorderRadius.circular(100)), */
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    // style:
                                    decoration: InputDecoration(
                                      prefixText: "From :",
                                      suffixIcon: TextButton(
                                        onPressed: _sendToUser,
                                        child: Image.asset(
                                            "assets/images/Plain.png"),
                                      ),
                                      prefixStyle: TextStyle(
                                          fontFamily: "ClashGrotesk",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                      hintText: "Enter email address",
                                      hintStyle: TextStyle(
                                          fontFamily: "ClashGrotesk",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        borderSide: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Colors.black,
                                            width: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "Bucx is a self-custodial wallet. This means you are the only one with access to the private keys for your account.",
                              style: TextStyle(
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "If enabled, an encrypted backup will be saved automatically to your Google Drive.",
                              style: TextStyle(
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "Your Bucx wallet can be restored on any phone if a backup is saved and you are signed with the Google account associated with your wallet.",
                              style: TextStyle(
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0x0FF14F195),
                                  borderRadius: BorderRadius.circular(100)),
                              width: 321,
                              height: 56,
                              child: ElevatedButton(
                                  onPressed: null,
                                  child: Text(
                                    "Backup Now",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0X0FF000000),
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w500),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  _navigateToOnBoardingScreen() async {
    await Future.delayed(Duration(milliseconds: 1500));
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          width: 361,
          height: 404,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Column(
                          children: [
                            Text(
                              'Backup Wallet',
                              style: TextStyle(
                                fontSize: 26,
                                color: Color(0X0FF000000),
                                fontFamily: "ClashGrotesk",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )),
                        Container(
                          width: 20,
                          height: 20,
                          child: TextButton(
                            onPressed: () {
                              // Close the bottom sheet when the button is pressed
                              Navigator.pop(context);
                            },
                            child: FaIcon(FontAwesomeIcons.close),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 202,
                                height: 33,
                                decoration: BoxDecoration(
                                    color: Color(0X0FFD5B2FF),
                                    border: Border.all(
                                        style: BorderStyle.solid,
                                        color: Colors.black,
                                        width: 1),
                                    borderRadius: BorderRadius.circular(100)),
                                child: TextButton(
                                  onPressed: null,
                                  child: Text(
                                    "odusoviasuyi@gmail.com",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            textAlign: TextAlign.justify,
                            "Bucx is a self-custodial wallet. This means you are the only one with access to the private keys for your account.",
                            style: TextStyle(
                                fontFamily: "ClashGrotesk",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            textAlign: TextAlign.justify,
                            "If enabled, an encrypted backup will be saved automatically to your Google Drive.",
                            style: TextStyle(
                                fontFamily: "ClashGrotesk",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            textAlign: TextAlign.justify,
                            "Your Bucx wallet can be restored on any phone if a backup is saved and you are signed with the Google account associated with your wallet.",
                            style: TextStyle(
                                fontFamily: "ClashGrotesk",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0x0FF14F195),
                                borderRadius: BorderRadius.circular(100)),
                            width: 321,
                            height: 56,
                            child: ElevatedButton(
                                onPressed: null,
                                child: Text(
                                  "Backup Now",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0X0FF000000),
                                      fontFamily: "ClashGrotesk",
                                      fontWeight: FontWeight.w500),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  _topUpWallet() {
    // Future.delayed(Duration(milliseconds: 1500));
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            width: 370,
            // height: 04,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Top-Up',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0X0FF000000),
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                          Container(
                            width: 20,
                            height: 20,
                            child: Center(
                              child: TextButton(
                                onPressed: () {
                                  // Close the bottom sheet when the button is pressed
                                  Navigator.pop(context);
                                },
                                child: FaIcon(FontAwesomeIcons.close),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 190,
                              height: 44,
                              decoration: BoxDecoration(
                                  color: Color(0X0FFD5B2FF),
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      color: Colors.black,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(100)),
                              child: TextButton(
                                onPressed: null,
                                child: Row(
                                  children: [
                                    Image.asset("assets/images/💰.png"),
                                    Text(
                                      "Balance: \$862, 54.00",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "ClashGrotesk",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Row(children: [
                                Container(
                                    width: 156,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            style: BorderStyle.solid,
                                            color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Color(0X0FFffffff)),
                                    child: ElevatedButton(
                                        onPressed: null,
                                        child: Text(
                                          "\$25",
                                          style: TextStyle(
                                              color: Color(0x0FF000000),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 28,
                                              fontFamily: "clashGrotesk"),
                                        ))),
                                SizedBox(width: 15),
                                Container(
                                    width: 156,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            style: BorderStyle.solid,
                                            color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Color(0X0FFffffff)),
                                    child: ElevatedButton(
                                        onPressed: null,
                                        child: Text(
                                          "\$100",
                                          style: TextStyle(
                                              color: Color(0x0FF000000),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 28,
                                              fontFamily: "clashGrotesk"),
                                        )))
                              ]),
                            ),
                            SizedBox(height: 15),
                            Container(
                              child: Row(children: [
                                Container(
                                    width: 156,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            style: BorderStyle.solid,
                                            color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Color(0X0FFffffff)),
                                    child: ElevatedButton(
                                        onPressed: null,
                                        child: Text(
                                          "\$250",
                                          style: TextStyle(
                                              color: Color(0x0FF000000),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 28,
                                              fontFamily: "clashGrotesk"),
                                        ))),
                                SizedBox(width: 15),
                                Container(
                                    width: 156,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            style: BorderStyle.solid,
                                            color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Color(0X0FFffffff)),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Color(0x0FFD0FCEA))),
                                        onPressed: _topUpThroughOherMeans,
                                        child: Text(
                                          "Other",
                                          style: TextStyle(
                                              color: Color(0x0FF000000),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 28,
                                              fontFamily: "clashGrotesk"),
                                        )))
                              ]),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Works with your Naira cards, and crypto",
                              style: TextStyle(
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  _topUpThroughOherMeans() {
    Navigator.of(context).pop();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Container(
            width: 500.0, // Adjust width as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Top-Up',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0X0FF000000),
                            fontFamily: "ClashGrotesk",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )),
                    Container(
                      width: 20,
                      height: 20,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            // Close the bottom sheet when the button is pressed
                            Navigator.pop(context);
                          },
                          child: FaIcon(FontAwesomeIcons.close),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Choose method to add funds",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: "ClashGrotesk"),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 300,
                  child: Row(
                    children: [
                      Expanded(
                        // Wrap each container with Expanded to make them fill the available space horizontally
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: _addFundsWithAfrica,
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/images/Frame.svg"),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Card/Bank",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Color(0x0FF000000),
                                            fontFamily: "ClashGrotesk",
                                          ),
                                        ),
                                        Text(
                                          "Paystack - Africa",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            color: Color(0x0FF000000),
                                            fontFamily: "ClashGrotesk",
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 300,
                              child: Row(
                                children: [
                                  Expanded(
                                    // Wrap each container with Expanded to make them fill the available space horizontally
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: TextButton(
                                            onPressed: null,
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                    "assets/images/Frame.svg"),
                                                SizedBox(width: 10),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Card/Bank",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16,
                                                        color:
                                                            Color(0x0FF000000),
                                                        fontFamily:
                                                            "ClashGrotesk",
                                                      ),
                                                    ),
                                                    Text(
                                                      "Ramp - Outside Africa",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 13,
                                                        color:
                                                            Color(0x0FF000000),
                                                        fontFamily:
                                                            "ClashGrotesk",
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 300,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                // Wrap each container with Expanded to make them fill the available space horizontally
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 300,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 1,
                                                          style:
                                                              BorderStyle.solid,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: TextButton(
                                                        onPressed:
                                                            _topUpThroughCrypto,
                                                        child: Row(
                                                          children: [
                                                            SvgPicture.asset(
                                                                "assets/images/Frame.svg"),
                                                            SizedBox(width: 10),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Crypto Wallet",
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16,
                                                                    color: Color(
                                                                        0x0FF000000),
                                                                    fontFamily:
                                                                        "ClashGrotesk",
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "No fee",
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        13,
                                                                    color: Color(
                                                                        0x0FF000000),
                                                                    fontFamily:
                                                                        "ClashGrotesk",
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 10),
                                                    // Add other containers similarly
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Add other containers similarly
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _topUpThroughCrypto() {
    Navigator.of(context).pop();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          actions: [
            Center(
              child: Container(
                width: 220,
                height: 56,
                decoration: BoxDecoration(
                    color: Color(0X0FF14F195),
                    border: Border.all(
                        color: Color(0x0FF000000),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(100)),
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).pop();
                      _copyTextToClipboard(shortenedText);
                    },
                    child: Text(
                      "Copy wallet address",
                      style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0X0FF000000)),
                    )),
              ),
            ),
          ],
          title: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Top-Up',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0X0FF000000),
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )),
                      Container(
                        width: 20,
                        height: 20,
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              // Close the bottom sheet when the button is pressed
                              Navigator.pop(context);
                            },
                            child: FaIcon(FontAwesomeIcons.close),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "Add from crypto wallet",
                    style: TextStyle(
                        fontFamily: "ClashGrotesk",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0X0FF5F5F5F)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 230,
                height: 230,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/qrcode.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                shortenedText,
                style: TextStyle(
                    fontFamily: "ClashGrotesk",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0X0FF53524F)),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                textAlign: TextAlign.center,
                "Send USDC on Solana from another wallet address to this address",
                style: TextStyle(
                    fontFamily: "ClashGrotesk",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0X0FF000000)),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        );
      },
    );
  }

  _addFundsWithAfrica() {
    Navigator.of(context).pop();

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            width: 370,
            // height: 04,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Add Funds',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0X0FF000000),
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                          Container(
                            width: 20,
                            height: 20,
                            child: Center(
                              child: TextButton(
                                onPressed: () {
                                  // Close the bottom sheet when the button is pressed
                                  Navigator.pop(context);
                                },
                                child: FaIcon(FontAwesomeIcons.close),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        "Enter amount (1 USDC = NGN 1,250)",
                        style: TextStyle(
                            fontFamily: "ClashGrotesk",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0X0FF5F5F5F)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 356,
                              height: 90,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0X0FFffffff),
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      color: Colors.black,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(16.58)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "You Pay",
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            "assets/images/nigeria_logo.png"),
                                        Text(
                                          "355,700",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "ClashGrotesk",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 26),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                            SizedBox(height: 5),
                            Container(
                                child: Row(children: [
                              Image.asset("assets/images/Info_Circle.png"),
                              Text(
                                "Min. amount - ₦5,000/Max. amount - ₦ 100,000",
                                style: TextStyle(
                                    color: Color(0X0FF5F5F5F),
                                    fontFamily: "ClashGrotesk",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ])),
                            SizedBox(height: 15),
                            Container(
                              width: 356,
                              height: 90,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0X0FFffffff),
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      color: Colors.black,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(16.58)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "You Receive",
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            "assets/images/usdc_logo.png"),
                                        Text(
                                          "244.67",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "ClashGrotesk",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 26),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 356,
                              height: 56,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0x0FF000000),
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(100)),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                    Color(0x0FF14F195),
                                  )),
                                  onPressed: () {
                                    // Navigator.of(context).pop();
                                    _orderDetails();
                                  },
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0X0FF000000)),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  _orderDetails() {
    Navigator.of(context).pop();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.white,
            actions: [
              Container(
                width: 356,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0x0FF000000),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(100)),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Color(0x0FF14F195),
                    )),
                    onPressed: () {
                      // Navigator.of(context).pop();
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0X0FF000000)),
                    )),
              ),
            ],
            title: Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Positioned(
                        top: -60,
                        left: 60,
                        child: Container(
                          width: 80,
                          height: 80,
                          child:
                              Image.asset("assets/images/order_detail_img.png"),
                        ),
                      ),
                      Text(
                        "Order Details",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 26,
                          color: Color(0X0FF000000),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "You Pay",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "N355,700",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "You Receive",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\$244.67",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fee ",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1% (N3557)",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Cost ",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "N359,257",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Processing time ",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1-5 mins",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }

  _confirmDetails() {
    Navigator.of(context).pop();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.white,
            actions: [
              Container(
                width: 356,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0x0FF000000),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(100)),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Color(0x0FF14F195),
                    )),
                    onPressed: () {
                      // Navigator.of(context).pop();
                      _successFulWithDrawal();
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0X0FF000000)),
                    )),
              ),
            ],
            title: Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Positioned(
                        top: -60,
                        left: 60,
                        child: Container(
                          width: 80,
                          height: 80,
                          child:
                              Image.asset("assets/images/order_detail_img.png"),
                        ),
                      ),
                      Text(
                        "Confirm Details",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 26,
                          color: Color(0X0FF000000),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Amount to withdraw",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\$125",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " You will receive",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\$125,000",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Bank ",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Kuda Bank",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Account",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "12******455",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Adaku Obi John",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }

  _viewAccount() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            width: 350, // Adjust width as needed
            height: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Account',
                            style: TextStyle(
                              fontSize: 26,
                              color: Color(0X0FF000000),
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            // Close the bottom sheet when the button is pressed
                            Navigator.pop(context);
                          },
                          child: FaIcon(FontAwesomeIcons.close),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 202,
                  height: 33,
                  decoration: BoxDecoration(
                      color: Color(0X0FFD5B2FF),
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.black,
                          width: 1),
                      borderRadius: BorderRadius.circular(100)),
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      "odusoviasuyi@gmail.com",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 300,
                  child: Row(
                    children: [
                      Expanded(
                        // Wrap each container with Expanded to make them fill the available space horizontally
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 321,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: _addFundsWithAfrica,
                                child: Row(
                                  children: [
                                    Image.asset("assets/images/withdraw.png"),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextButton(
                                            onPressed: _withdrawFunds,
                                            child: Text(
                                              "Withdraw Funds",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Color(0x0FF000000),
                                                fontFamily: "ClashGrotesk",
                                              ),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 300,
                              child: Row(
                                children: [
                                  Expanded(
                                    // Wrap each container with Expanded to make them fill the available space horizontally
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 321,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: TextButton(
                                            onPressed: null,
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    "assets/images/twitter.png"),
                                                SizedBox(width: 10),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Follow us on Twitter",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 16,
                                                        color:
                                                            Color(0x0FF000000),
                                                        fontFamily:
                                                            "ClashGrotesk",
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 300,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                // Wrap each container with Expanded to make them fill the available space horizontally
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 321,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 1,
                                                          style:
                                                              BorderStyle.solid,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: TextButton(
                                                        onPressed: null,
                                                        child: Row(
                                                          children: [
                                                            Image.asset(
                                                                "assets/images/support_us.png"),
                                                            SizedBox(width: 10),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Support",
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16,
                                                                    color: Color(
                                                                        0x0FF000000),
                                                                    fontFamily:
                                                                        "ClashGrotesk",
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 10),

                                                    // Add other containers similarly
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 321,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: _addFundsWithAfrica,
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/privacy_key.png"),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Privacy Policy",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Color(0x0FF000000),
                                            fontFamily: "ClashGrotesk",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 321,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: _addFundsWithAfrica,
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/back_up_wallet.png"),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          " Backup Wallet",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Color(0x0FF000000),
                                            fontFamily: "ClashGrotesk",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _withdrawFunds() {
    Navigator.of(context).pop();

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            width: 370,
            // height: 04,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Withdraw Bucks',
                                style: TextStyle(
                                  fontSize: 26,
                                  color: Color(0X0FF000000),
                                  fontFamily: "ClashGrotesk",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                          Container(
                            width: 20,
                            height: 20,
                            child: Center(
                              child: TextButton(
                                onPressed: () {
                                  // Close the bottom sheet when the button is pressed
                                  Navigator.pop(context);
                                },
                                child: FaIcon(FontAwesomeIcons.close),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        // controller: _controller,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "ClashGrotesk",
                            fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                            hintText: "Enter Amount",
                            hintStyle: TextStyle(
                                fontFamily: "ClashGrotesk",
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none)),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\d+\.?\d{0,6}'))
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 356,
                              height: 90,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0X0FFffffff),
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      color: Colors.black,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(16.58)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "You Withdraw",
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            "assets/images/nigeria_logo.png"),
                                        Text(
                                          "\$24.67",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "ClashGrotesk",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 26),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                            SizedBox(height: 5),
                            Container(
                                child: Row(children: [
                              Image.asset("assets/images/Info_Circle.png"),
                              Text(
                                textAlign: TextAlign.start,
                                "1 USDC = NGN 1,449.13",
                                style: TextStyle(
                                    color: Color(0X0FF5F5F5F),
                                    fontFamily: "ClashGrotesk",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ])),
                            SizedBox(height: 15),
                            Container(
                              width: 356,
                              height: 90,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0X0FFffffff),
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      color: Colors.black,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(16.58)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "You Receive",
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            "assets/images/usdc_logo.png"),
                                        Text(
                                          "35,700",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "ClashGrotesk",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 26),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 356,
                              height: 56,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0x0FF000000),
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(100)),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                    Color(0x0FF14F195),
                                  )),
                                  onPressed: () {
                                    // Navigator.of(context).pop();
                                    _proceedWithWithdrawal();
                                  },
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0X0FF000000)),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  _proceedWithWithdrawal() {
    Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              actions: [
                Container(
                  width: 356,
                  height: 56,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0x0FF000000),
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(100)),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                        Color(0x0FF14F195),
                      )),
                      onPressed: () {
                        // Navigator.of(context).pop();
                        _confirmDetails();
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontFamily: "ClashGrotesk",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0X0FF000000)),
                      )),
                ),
              ],
              title: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Withdraw Bucks',
                              style: TextStyle(
                                fontSize: 26,
                                color: Color(0X0FF000000),
                                fontFamily: "ClashGrotesk",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )),
                        Container(
                          width: 20,
                          height: 20,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                // Close the bottom sheet when the button is pressed
                                Navigator.pop(context);
                              },
                              child: FaIcon(FontAwesomeIcons.close),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Enter account details correctly",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0X0FF000000),
                        fontFamily: "ClashGrotesk",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "Select bank",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0X0FF000000),
                                    fontFamily: "ClashGrotesk",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  width: 356,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              width: 1,
                                              color: Color(
                                                0X0FF000000,
                                              ),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    hint: Text(
                                      'Select a bank',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0X0FF000000),
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    items: banks
                                        .map((bank) => DropdownMenuItem(
                                              child: Text(bank),
                                              value: bank,
                                            ))
                                        .toList(),
                                    onChanged: (val) {
                                      // Handle onChanged event
                                    },
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "Account Number",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0X0FF000000),
                                    fontFamily: "ClashGrotesk",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  width: 356,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "0123456789",
                                        hintStyle: TextStyle(
                                          fontSize: 12,
                                          color: Color(0X0FF000000),
                                          fontFamily: "ClashGrotesk",
                                          fontWeight: FontWeight.w500,
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              width: 1,
                                              color: Color(
                                                0X0FF000000,
                                              ),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "Account Name",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0X0FF000000),
                                    fontFamily: "ClashGrotesk",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  width: 356,
                                  child: TextField(
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                        hintText: "Enter account Name",
                                        hintStyle: TextStyle(
                                          fontSize: 12,
                                          color: Color(0X0FF000000),
                                          fontFamily: "ClashGrotesk",
                                          fontWeight: FontWeight.w500,
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              width: 1,
                                              color: Color(
                                                0X0FF000000,
                                              ),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ])));
        });
  }

  _successFulWithDrawal() {
    Navigator.of(context).pop();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.white,
            actions: [
              Container(
                width: 356,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0x0FF000000),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(100)),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Color(0x0FF14F195),
                    )),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Close",
                      style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0X0FF000000)),
                    )),
              ),
            ],
            title: Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Positioned(
                        top: -60,
                        left: 60,
                        child: Container(
                          width: 80,
                          height: 80,
                          child: Image.asset("assets/images/succ_withdraw.png"),
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Withdrawal Successful",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0X0FF000000),
                        ),
                      ),
                      Text(
                        "N125,000",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          color: Color(0X0FF000000),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Some cool bucks is on it’s way to Adaku Obi John and is expected to arrive in 5 minutes subject to notification by the bank.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0X0FF000000),
                        ),
                      ),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }

  _sendFunds() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
              child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Row(children: [
                      Image.asset("assets/images/💸.png"),
                      Text("Send Funds"),
                    ])),
                    TextButton(
                      onPressed: Navigator.of(context).pop,
                      child: FaIcon(FontAwesomeIcons.close),
                    ),
                  ],
                ),
                Container(
                  width: 320,
                  child: TextField(
                    textAlign: TextAlign.center,
                    // style:
                    decoration: InputDecoration(
                      prefixText: "To :",
                      suffixIcon: TextButton(
                        onPressed: _sendViaEmail,
                        child: Image.asset("assets/images/Plain.png"),
                      ),
                      prefixStyle: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      hintText: "Email or Wallet address",
                      hintStyle: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.black,
                            width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  textAlign: TextAlign.start,
                  "Recent Recipients",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "ClashGrotesk",
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 70,
                        height: 92,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                  "assets/images/Frame_4.png",
                                )))),
                            Text("Seun"),
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 92,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                  "assets/images/Frame_5.png",
                                )))),
                            Text("Jack"),
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 92,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                  "assets/images/Frame_4.png",
                                )))),
                            Text("Osas"),
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 92,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                  "assets/images/Frame_6.png",
                                )))),
                            Text("Alfred"),
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 92,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                  "assets/images/Frame_4.png",
                                )))),
                            Text("Lola"),
                          ],
                        ),
                      ),
                    ]),
                SizedBox(width: 30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Transactions",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      )
                    ]),
                SizedBox(height: 15),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            style: BorderStyle.solid,
                            width: 1,
                            color: Colors.black)),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Row(children: [
                              Image.asset(
                                "assets/images/withdrawal.png",
                              ),
                              SizedBox(width: 15),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Seun Bayo",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "14:16, Mar 24, 2024",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w400,
                                        color: Color(0X0FF888888),
                                      ),
                                    )
                                  ])
                            ])),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "-\$24",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "ClashGrotesk",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0X0ffD4321C),
                                    ),
                                  ),
                                  Text(
                                    "NGN 33,650",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "ClashGrotesk",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0X0ff888888),
                                    ),
                                  )
                                ])
                          ]),
                    ])),
                SizedBox(height: 15),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            style: BorderStyle.solid,
                            width: 1,
                            color: Colors.black)),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Row(children: [
                              Image.asset(
                                "assets/images/withdrawal_2.png",
                              ),
                              SizedBox(width: 15),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Withdrawal",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "14:16, Mar 24, 2024",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w400,
                                        color: Color(0X0FF888888),
                                      ),
                                    )
                                  ])
                            ])),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "-\$54",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "ClashGrotesk",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0X0ff8E55D4),
                                    ),
                                  ),
                                  Text(
                                    "NGN 33,650",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "ClashGrotesk",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0X0ff888888),
                                    ),
                                  )
                                ])
                          ])
                    ])),
                SizedBox(height: 15),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            style: BorderStyle.solid,
                            width: 1,
                            color: Colors.black)),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Row(children: [
                              Image.asset(
                                "assets/images/from.png",
                              ),
                              SizedBox(width: 15),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "From Mahmudul Ha...",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "14:16, Mar 24, 2024",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w400,
                                        color: Color(0X0FF888888),
                                      ),
                                    )
                                  ])
                            ])),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "+\$24",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "ClashGrotesk",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0X0ff0DA163),
                                    ),
                                  ),
                                  Text(
                                    "NGN 33,650",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "ClashGrotesk",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0X0ff888888),
                                    ),
                                  )
                                ])
                          ])
                    ])),
                SizedBox(height: 15),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            style: BorderStyle.solid,
                            width: 1,
                            color: Colors.black)),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Row(children: [
                              Image.asset(
                                "assets/images/topUp.png",
                              ),
                              SizedBox(width: 15),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Top-Up",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "14:16, Mar 24, 2024",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w400,
                                        color: Color(0X0FF888888),
                                      ),
                                    )
                                  ])
                            ])),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "+\$424",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "ClashGrotesk",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0X0ff0DA163),
                                    ),
                                  ),
                                  Text(
                                    "NGN 33,650",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "ClashGrotesk",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0X0ff888888),
                                    ),
                                  )
                                ])
                          ])
                    ])),
                SizedBox(height: 25),
              ],
            ),
          ));
        });
  }

  _sendViaEmail() {
    Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actions: [
              Container(
                width: 356,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0x0FF000000),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(100)),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Color(0x0FF14F195),
                    )),
                    onPressed: () {
                      // Navigator.of(context).pop();
                      _verifyTransaction();
                    },
                    child: Text(
                      "Send \$345",
                      style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0X0FF000000)),
                    )),
              ),
            ],
            title: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(children: [
                        Image.asset("assets/images/💸.png"),
                        Text("Send Funds"),
                      ])),
                      TextButton(
                        onPressed: Navigator.of(context).pop,
                        child: FaIcon(FontAwesomeIcons.close),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/sender.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(height: 15),
                  Text(
                    "Osas Kelvin",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "odusoviasuyi@gmail.com",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w400,
                      color: Color(0X0FF3a3a3a),
                    ),
                  ),
                  SizedBox(height: 45),
                  Text(
                    "\$345",
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 35),
                  TextField(
                    textAlign: TextAlign.center,
                    // style:
                    decoration: InputDecoration(
                      hintText: "What’s this for? (optional) 🙃",
                      hintStyle: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Color(0X0FFDDDDDD),
                            width: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  _verifyTransaction() {
    Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actions: [
              Container(
                width: 356,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0x0FF000000),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(100)),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Color(0x0FF14F195),
                    )),
                    onPressed: () {
                      // Navigator.of(context).pop();
                      _processing();
                    },
                    child: Text(
                      "Confrim",
                      style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0X0FF000000)),
                    )),
              ),
              SizedBox(height: 20),
              Container(
                width: 356,
                height: 56,
                decoration: BoxDecoration(
                    color: Color(0x0FF14F195),
                    border: Border.all(
                        color: Color(0x0FF000000),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(100)),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0X0FF5F5F5F)),
                    )),
              )
            ],
            title: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(children: [
                        Image.asset("assets/images/💸.png"),
                        Text("Send Funds"),
                      ])),
                      TextButton(
                        onPressed: Navigator.of(context).pop,
                        child: FaIcon(FontAwesomeIcons.close),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/sender.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(height: 15),
                  Text(
                    "Osas Kelvin",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "odusoviasuyi@gmail.com",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w400,
                      color: Color(0X0FF3a3a3a),
                    ),
                  ),
                  SizedBox(height: 45),
                  Text(
                    "A magical link is on its way via email, granting them the power to pay you with Bucx.",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ),
          );
        });
  }

  _processing() {
    Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actions: [
              Container(
                width: 356,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0x0FF000000),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(100)),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Color(0x0FF14F195),
                    )),
                    onPressed: () {
                      // Navigator.of(context).pop();
                      ;
                    },
                    child: Text(
                      "Processing...",
                      style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0X0FF000000)),
                    )),
              ),
            ],
            title: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 25),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/launching.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(height: 15),
                  Text(
                    "Hold Tight",
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 45),
                  Text(
                    "Sending your digital dollars on a joyride through the crypto cosmos. Fasten your seatbelts; it's a wild, playful journey! 🚀💸",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ),
          );
        });
  }

  _sent_success() {
    Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actions: [
              Container(
                width: 356,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0x0FF000000),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(100)),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Color(0x0FF14F195),
                    )),
                    onPressed: () {
                      // Navigator.of(context).pop();
                      _topUpThroughOherMeans();
                      ;
                    },
                    child: Text(
                      "Add Funds",
                      style: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0X0FF000000)),
                    )),
              ),
            ],
            title: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 25),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/insufficient_fund.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(height: 15),
                  Text(
                    "Top Up!",
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 45),
                  Text(
                    "You don’t have sufficient funds in your wallet to complete this transaction.",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ),
          );
        });
  }

  _insufficientBalabce() {}

  @override
  Widget build(BuildContext context) {
    // Placeholder widget for the actual content
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 139,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(1000),
                    color: Color(0X0FF14F195),
                  ),
                  child: ElevatedButton(
                      onPressed: _requestButton,
                      child: Row(
                        children: [
                          Image.asset("assets/images/money_smile.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Request",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashGrotesk",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ))),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                    child: TextButton(
                        onPressed: _viewWalletAddress,
                        child: SvgPicture.asset("assets/images/QRCode.svg"))),
              ),
              Container(
                  width: 139,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(1000),
                    color: Color(0X0FF14F195),
                  ),
                  child: ElevatedButton(
                      onPressed: null,
                      child: Row(
                        children: [
                          Image.asset("assets/images/💸.png"),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: _sendFunds,
                            child: Text(
                              "Send",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "ClashGrotesk",
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ))),
            ],
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 162,
                            height: 44,
                            decoration: BoxDecoration(
                                color: Color(0X0FFD5B2FF),
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Colors.black,
                                    width: 1),
                                borderRadius: BorderRadius.circular(100)),
                            child: TextButton(
                              onPressed: null,
                              child: Row(
                                children: [
                                  Image.asset("assets/images/💰.png"),
                                  Text(
                                    "Balance:86254",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "ClashGrotesk",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: _topUpWallet,
                              child: SvgPicture.asset(
                                  "assets/images/Vector (1).svg"),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: TextButton(
                          onPressed: _viewAccount,
                          child: Center(
                              child: Image.asset(
                                  "assets/images/User_Rounded.png")),
                        ),
                      ),
                    )
                  ],
                ),
                TextField(
                  // controller: _controller,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 80,
                      fontFamily: "ClashGrotesk",
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      hintText: "\$0",
                      hintStyle: TextStyle(
                          fontFamily: "ClashGrotesk",
                          fontSize: 80,
                          fontWeight: FontWeight.w500),
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,6}'))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _copyTextToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text)).then((_) {
      // Optionally, you can show a snackbar to indicate that the text has been copied.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Color(0xFF14F195),
          content: Text(
            'Text copied to clipboard',
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
    }).catchError((error) {
      // Handle error if copying to clipboard fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Failed to copy text to clipboard',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    });
  }
}
