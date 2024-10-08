import 'package:flutter/material.dart';
import '../data/data.dart';
import '../main.dart';

class SearchedPage extends StatelessWidget {
  final int index;
  const SearchedPage({super.key, required this.index});


  @override
  Widget build(BuildContext context) {

    var currentPage = index;

    var nakshatra = Data().nakshatra[currentPage -  1];
    var aaradhaya = Data().aaradhaya[currentPage - 1];
    var shortDescription = Data().shortDescription[currentPage - 1];
    var sanskritTreeName = Data().sanskritTreeName[currentPage - 1];
    var hindiTreeName = Data().hindiTreeName[currentPage - 1];
    var botanicalTreeName = Data().botanicalTreeName[currentPage - 1];

    var statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: statusBarHeight + 1),
        decoration: BoxDecoration(
            color: mainThemeColor
        ),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                "assets/nakshatras/$currentPage.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Nakshatra - $nakshatra",
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          "Aaradhaya - $aaradhaya",
                          style: const TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            Text(
                              "Sanskrit - $sanskritTreeName",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "|",
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Hindi - $hindiTreeName",
                            ),
                            const Spacer(),
                          ],
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            Text(
                              "Botanical - $botanicalTreeName",
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          shortDescription,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              fontSize: 14,
                              // color: Colors.black,
                              fontFamily: 'TiltNeon',
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  ],
                ),
              )),
        ),
      )
    );
  }
}