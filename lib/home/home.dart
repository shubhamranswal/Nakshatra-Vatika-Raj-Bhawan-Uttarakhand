import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nakshatra_vatika_animated/drawer_items/about_nv.dart';
import 'package:nakshatra_vatika_animated/drawer_items/about_raj_bhawan.dart';
import 'package:nakshatra_vatika_animated/drawer_items/privacy_policy.dart';

import '../drawer_items/report_bug.dart';
import '../list_page/list_page.dart';
import '../main.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  DateTime xTime = DateTime.now();
  late DateTime currentBackPressTime = xTime;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
          drawer: Drawer(
              child: Container(
                  padding: const EdgeInsets.all(20),
                  color: mainThemeColor,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).viewPadding.top),
                        child: Image.asset(
                          'assets/lionLogo.png',
                          color: Colors.white,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      const Spacer(),
                      ListTile(
                        title: const Text(
                          "About Raj Bhawan Uttarakhand",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              fullscreenDialog: true,
                              builder: (context) {
                                return const AboutRajBhawan();
                              },
                            ),
                          );
                        },
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      ListTile(
                        title: const Text(
                          "About Nakshatra Vatika",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              fullscreenDialog: true,
                              builder: (context) {
                                return const AboutNV();
                              },
                            ),
                          );
                        },
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      ListTile(
                        title: const Text(
                          "Report Bug",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              fullscreenDialog: true,
                              builder: (context) {
                                return const ReportBug();
                              },
                            ),
                          );
                        },
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      ListTile(
                        title: const Text(
                          "Privacy Policy",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              fullscreenDialog: true,
                              builder: (context) {
                                return const PrivacyPolicy();
                              },
                            ),
                          );
                        },
                      )
                    ],
                  ))),
          body: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/rajBhawan.jpg'),
                          fit: BoxFit.cover))),
              Container(color: mainThemeColor.withOpacity(0.6)),
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: const IconThemeData(color: Colors.white),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/lionLogo.png',
                          color: Colors.white,
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(height: 10),
                        const Text('Nakshatra Vatika',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                        const SizedBox(height: 5),
                        const Text('Raj Bhawan Uttarakhand',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                      ]),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(mainThemeColor),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: FittedBox(
                      child: Row(
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: const CircleBorder(),
                              ),
                              child: Icon(Icons.star, color: mainThemeColor),
                              onPressed: () {
                                Navigator.of(context).push(
                                  CupertinoPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) {
                                      return const ListPage();
                                    },
                                  ),
                                );
                              }),
                          const Text(
                            "Nakshatras",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFFFFFFFF),
                                shape: const CircleBorder(),
                              ),
                              child: Icon(Icons.star, color: mainThemeColor),
                              onPressed: () {
                                Navigator.of(context).push(
                                  CupertinoPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) {
                                      return const ListPage();
                                    },
                                  ),
                                );
                              }),
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          fullscreenDialog: true,
                          builder: (context) {
                            return const ListPage();
                          },
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          )),
      onWillPop: () async {
        DateTime now = DateTime.now();
        if (now.difference(currentBackPressTime) > const Duration(seconds: 2)) {
          currentBackPressTime = now;
          Fluttertoast.showToast(msg: "Tap back again to close app.");
          return false;
        }
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
        return true;
      },
    );
  }
}
