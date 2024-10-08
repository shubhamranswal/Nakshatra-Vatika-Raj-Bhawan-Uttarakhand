import 'package:flutter/material.dart';
import '../main.dart';

class AboutRajBhawan extends StatelessWidget {
  const AboutRajBhawan({super.key});

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
                                  "About Raj Bhawan Uttarakhand",
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/rajBhawan.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                const Text(
                                  "Raj Bhavan, Dehradun or Governor's House, Dehradun is the official residence of the governor of Uttarakhand. Uttarakhand is one of the few Indian states which have two official buildings of Raj Bhavans. The first one is located in the capital city of Dehradun. The second Raj Bhavan of Uttarakhand is located in Nainital. The current governor of Uttarakhand is Gurmit Singh.",
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  "The present Raj Bhavan of Dehradun was built in 1902. Earlier it was known as 'Court House', where the then Governor of United Provinces often used to reside. With the creation of the State of Uttarakhand, the Raj Bhavan was temporarily established at Bijapur House located on New Cantt Road in Dehradun. Subsequently, the Circuit House of Dehradun was re-designated as Raj Bhavan and the first Governor of Uttarakhand, Surjit Singh Barnala, shifted there on 25 December 2000. In the post-Independence period, India's first Prime Minister, Jawaharlal Nehru used to stay in this building whenever he visited Dehradun. From time to time, various Presidents of India and almost all Indian Prime Ministers, so far, have stayed in this historic building. The sprawling lawns, Bonsai Garden and rich floral species add to the areal beauty of the Raj Bhavan. The Auditorium of Raj Bhavan is a special venue where various important events e.g. oath-taking ceremonies, seminars, book-release functions and cultural programmes etc. are organised.",
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  "The second Raj Bhavan or Governor's House of Uttarakhand is located in Nainital, it is the summer retreat of the governor of Uttarakhand. In the pre-Independence era, Nainital served as the summer capital of United Provinces and this building, built like a Scottish castle was christened as the 'Government House'. Raj Bhavan was built by the British as the residence of the governor of the North-Western Provinces. The beginning of construction of Raj Bhavan started in April 1897 and took two years to complete. It is built on European pattern and based on Gothic architecture. The designers of Raj Bhavan at Nainital were Architect Stevens and the Executive Engineer F.O.W. Ortel. After independence it was renamed as Raj Bhavan. The Raj Bhavan estate is spread over 220 acre of area with a golf course in 45 acre of land. The golf course of Raj Bhavan, built in 1936, is one of the vintage golf courses in India, and is affiliated to the Indian Golf Union. In the post-independence period, Sarojini Naidu, the first governor of Uttar Pradesh, was the first occupant of this historic monument.",
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
