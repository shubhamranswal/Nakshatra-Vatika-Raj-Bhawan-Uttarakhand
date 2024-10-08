import 'package:flutter/material.dart';
import '../main.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        Container(
          margin: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
              top: MediaQuery.paddingOf(context).top + kToolbarHeight),
          child: Card(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Privacy Policy",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Introduction",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Welcome to Nakshatra Vatika - Raj Bhawan Uttarakhand, a mobile application devoted to providing exceptional services without compromising user privacy. This Privacy Policy is designed to help you understand how we treat the information that is generated during your use of our application. By using this app, you are agreeing to the terms of this Privacy Policy.",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "No Internet Connection Required",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "This particular application is unique in that it operates entirely offline. This means that all the functionalities available in our app are processed on your device, without the need for an internet connection. This offline nature ensures that your data remains in your control and is not transmitted to us or any third parties.",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Information We Do Not Collect",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Since our app operates offline, we do not collect or process any personal information about you. We do not require you to provide any personal details to use our application, and we do not access or store any information on your device. Our commitment is to your privacy, and we have designed our app to ensure that your information remains private.",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Data Security",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "We take the security of your data very seriously. Since our app does not connect to the internet, there is no risk of your data being transmitted unintentionally. Your data remains on your device and is inaccessible to us or any third parties.",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "User Interaction",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Our application does not support user-to-user interactions, ensuring that your use of the app remains private and secure. There are no chat features, no data sharing capabilities, and no social media integrations that could potentially expose your information to others.",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Children’s Privacy",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Protecting the privacy of young children is of utmost importance to us. Our application is designed to be safe and appropriate for users of all ages. We do not knowingly collect or solicit any information from children under the age of 13, and our app does not offer features that could potentially exploit young users.",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Changes to Our Privacy Policy",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "We reserve the right to modify this Privacy Policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon their posting on the page. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it.",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "We are committed to maintaining the trust and confidence of our users. We want you to feel safe and secure while using our application, knowing that your privacy is protected. We hope this Privacy Policy has been clear in explaining how we do not collect, use, or disclose any of your personal information, as all of the processing occurs on your device, offline. We hope you enjoy using our application with complete peace of mind regarding your privacy.",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
        )
      ],
    ));
  }
}
