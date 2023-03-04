import 'package:flutter/material.dart';
import 'package:flutter_one_hour/home_page.dart';
import 'package:flutter_one_hour/person_page.dart';
import 'package:flutter_one_hour/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = [
    HomePage(),
    PersonPage(),
   SearchPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER'),
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('floating action button');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'person'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
