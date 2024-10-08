import 'package:flutter/material.dart';

import '../main.dart';

class ReportBug extends StatelessWidget {
  const ReportBug({super.key});

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
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Report Bug",
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    color: Colors.grey[300],
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Developer's Contact", textAlign: TextAlign.center, style: TextStyle(fontSize: 18),),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Contact Person - ", style: TextStyle(fontSize: 14),),
                                            Text("Dr. Vishal Kumar", style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Email - ", style: TextStyle(fontSize: 14),),
                                            Text("vishalkumar@kecua.ac.in", style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.blueAccent),),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                const Text(
                                  "Welcome to the Nakshatra Vatika, a mobile application meticulously crafted and brought to life by the dedicated student team at Bipin Tripathi Kumaon Institute of Technology, Dwarahat. This endeavor has been made possible under the esteemed guidance and supervision of Dr. Vishal Kumar, a luminary in the field whose expertise has been pivotal in the development of this application.",
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  "Bipin Tripathi Kumaon Institute of Technology, Dwarahat, has been the breeding ground for innovation and excellence, and it is here that our team has honed their skills, guided by the teachings and mentorship of Dr. Vishal Kumar. Dr. Kumar’s role in this project extends beyond supervision; he has been a mentor, a guide, and a constant source of inspiration for every member of the team. His belief in the potential of his students and his commitment to fostering a conducive environment for learning and growth has been instrumental in the success of this application.",
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
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
