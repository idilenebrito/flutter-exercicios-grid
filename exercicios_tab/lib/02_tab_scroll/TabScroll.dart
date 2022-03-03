import 'package:flutter/material.dart';

class TabScroll extends StatelessWidget {
  const TabScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listTabs = [
      'Tab 1',
      'Tab 2',
      'Tab 3',
      'Tab 4',
      'Tab 5',
      'Tab 6',
      'Tab 7',
      'Tab 8',
      'Tab 9',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: listTabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 145, 102, 224),
            title: const Text(
              "Tab Scroll",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            centerTitle: true,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.amber,
              tabs: [
                for (final tab in listTabs)
                  Tab(
                    height: 60,
                    child: Text(
                      tab,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
              ],
            ),
          ),
          body: TabBarView(children: [
            for (final tab in listTabs)
              Center(
                child: Text(
                  tab,
                  style: const TextStyle(fontSize: 20, color: Colors.black54),
                ),
              )
          ]),
        ),
      ),
    );
  }
}