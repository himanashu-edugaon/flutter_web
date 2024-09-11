import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Home",
                    style: TextStyle(fontSize: 22, color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: SearchBar(
                    shadowColor: WidgetStateProperty.all(Colors.white),
                    leading: Text(
                      "Search",
                      style: TextStyle(color: Colors.pink.shade100),
                    ),
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xff2e283e)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    trailing: [
                      IconButton(
                        icon: const Icon(Icons.search, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                    textStyle: WidgetStateProperty.all(
                        const TextStyle(color: Colors.white)),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.016,
                          ),
                          IconButton(
                            icon: const Icon(CupertinoIcons.doc_text_search),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          IconButton(
                            icon: const Icon(CupertinoIcons.bell),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          IconButton(
                            icon: const Icon(CupertinoIcons.power),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                        ],
                      )),
                      Image.asset(
                        "assets/images/girl.png",
                        height: height * 0.050,
                      ),
                      SizedBox(
                        width: width * 0.010,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex:6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: height / 3.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: const LinearGradient(
                              colors: [Colors.purple, Colors.deepPurpleAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Top Rating Project',
                                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold,),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Trending project and high rating\nProject Created by team.',
                                  style: TextStyle(color: Colors.white, fontSize: 16,),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  child: const Text('Learn More'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Card(
                                color: Color(0xff101c45),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    height: height / 2.9,
                                    child: ListView(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'All Projects',
                                          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),
                                        ),
                                        const SizedBox(height: 10),
                                        itemTile(
                                            cardColor: Colors.red,
                                            title: "Technology behind the Blockchain",
                                            titleColor: Colors.black,
                                            description: "Project #1 - See project details",
                                            descriptionColor: Colors.white,
                                            icon: const Icon(Icons.edit, color: Colors.white,)),
                                        itemTile(
                                            cardColor: Color(0xff1b244a),
                                            title: "Technology behind the Blockchain",
                                            titleColor: Colors.white,
                                            description: "Project #1 - See project details",
                                            descriptionColor: Colors.grey,
                                            icon: const Icon(Icons.edit, color: Colors.grey, size: 20,)),
                                        itemTile(
                                            cardColor: Color(0xff1b244a),
                                            title:"Technology behind the Blockchain",
                                            titleColor: Colors.white,
                                            description: "Project #1 - See project details",
                                            descriptionColor: Colors.grey,
                                            icon: const Icon(Icons.edit, color: Colors.grey, size: 20,)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                color: Color(0xff101c45),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: ListView(
                                  shrinkWrap: true,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.maxFinite,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff1b244a),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20))),
                                      child: const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Top Creators',
                                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 18),
                                            // First Creator
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text('Name', style: TextStyle(color: Colors.white),),
                                                Text('Artworks', style: TextStyle(color: Colors.white)),
                                                Text('Rating', style: TextStyle(color: Colors.white)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    allCreator(title: "@maddison_c21"),
                                    allCreator(title: "@karl_will002"),
                                    allCreator(title: "@maddison_c21"),
                                    allCreator(title: "@maddison_c21"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Overall Performance The Years',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
                            SizedBox(
                              height: height * 0.45,
                              child: Row(
                                children: [
                                  Expanded(child: const LineChartSample()),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      double width = constraints.maxWidth;
                      double height = constraints.maxHeight;

                      double padding = width > 600 ? 32.0 : 16.0;
                      double fontSize = width > 600 ? 18.0 : 14.0;

                      return Container(
                        height: height,
                        color: const Color(0xff101c45),
                        child: Padding(
                          padding: EdgeInsets.all(padding),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              SizedBox(height: height * 0.020),
                              Center(
                                child: Text(
                                  "GENERAL 10:00 AM TO 7:00 PM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.020),
                               CalendarWidget(),
                              SizedBox(height: height * 0.025),
                              EventCard(
                                title: "Today Birthday",
                                total: 2,
                                eventType: "Birthday Wishing",
                                icons: [
                                  "assets/images/girl.png",
                                  "assets/images/girl.png",
                                ],
                              ),
                              SizedBox(height: height * 0.025),
                              EventCard(
                                title: "Anniversary",
                                total: 3,
                                eventType: "Anniversary Wishing",
                                icons: [
                                  "assets/images/girl.png",
                                  "assets/images/girl.png",
                                  "assets/images/girl.png",
                                ],
                              ),
                              SizedBox(height: height * 0.020),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget itemTile({required String title, String? description,Icon? icon,
    Color? cardColor, Color? titleColor, Color? descriptionColor}) {
    return Card(
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/images/man_image.png",
                height: 45,
              )),
          title: Text(title, style: TextStyle(color: titleColor, fontSize: 13)),
          subtitle: Text(description.toString(),
              style: TextStyle(color: descriptionColor)),
          trailing: icon,
        ),
      ),
    );
  }


  Widget allCreator({required String title}) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/man_image.png'),
      ),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: SizedBox(
        width: 50,
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.circular(10),
          value: 0.8,
          backgroundColor: Colors.grey[700],
          color: Colors.blueAccent,
          minHeight: 8,
        ),
      ),
    );
  }
}

