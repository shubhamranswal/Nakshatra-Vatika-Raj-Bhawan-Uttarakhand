import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nakshatra_vatika/list_page/searched_page.dart';

import '../data/data.dart';
import '../main.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  var currentPage = 1;

  var max = Data().nakshatra.length;
  var min = 1;

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).viewPadding.top;

    var aaradhaya = Data().aaradhaya;
    var shortDescription = Data().shortDescription;
    var nakshatra = Data().nakshatra;

    var sanskritTreeName = Data().sanskritTreeName;
    var hindiTreeName = Data().hindiTreeName;
    var botanicalTreeName = Data().botanicalTreeName;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: mainThemeColor),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: statusBarHeight + 10,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFFFFFFF),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      children: [
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.black),
                        ),
                        Spacer(),
                        Icon(
                          Icons.search,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  onPressed: () {
                    showSearch(context: context, delegate: searchDelegate());
                  }),
            ),
            Expanded(
                child: GestureDetector(
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
                            "Nakshatra - ${nakshatra[currentPage - 1]}",
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            "Aaradhaya - ${aaradhaya[currentPage - 1]}",
                            style: const TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Text(
                                "Sanskrit - ${sanskritTreeName[currentPage - 1]}",
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
                                "Hindi - ${hindiTreeName[currentPage - 1]}",
                              ),
                              const Spacer(),
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Text(
                                "Botanical - ${botanicalTreeName[currentPage - 1]}",
                                textAlign: TextAlign.center,
                              ),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            shortDescription[currentPage - 1],
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
              onHorizontalDragEnd: (details) {
                var drag = 20;

                // Swiping in right direction.
                if (details.primaryVelocity! > drag) {
                  if (currentPage > min) {
                    setState(() {
                      currentPage -= 1;
                    });
                  }
                }

                // Swiping in left direction.
                if (details.primaryVelocity! < drag) {
                  if (currentPage < max) {
                    setState(() {
                      currentPage += 1;
                    });
                  }
                }
              },
            )),
            Row(
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.arrow_left,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      if (currentPage > min) {
                        setState(() {
                          currentPage -= 1;
                        });
                      }
                    }),
                const Spacer(),
                FilledButton(
                  style: FilledButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "$currentPage/27",
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                const Spacer(),
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.arrow_right,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      if (currentPage < max) {
                        setState(() {
                          currentPage += 1;
                        });
                      }
                    }),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class searchDelegate extends SearchDelegate {
  List<String> searchTerms = Data().nakshatra;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(
          Icons.clear,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        width: 10,
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            var currentItem = searchTerms.indexOf(result);

            Navigator.of(context).push(
              CupertinoPageRoute(
                fullscreenDialog: true,
                builder: (context) {
                  return SearchedPage(index: currentItem + 1);
                },
              ),
            );
          },
        );
      },
    );
  }
}
