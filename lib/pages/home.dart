import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:swiper/components/fill_tile.dart';

import 'package:swiper/utils/database.dart';
import 'package:swiper/utils/logger.dart';

// ignore: constant_identifier_names
const TAG = "HomePage";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("List"),
        ),
      ),
      body: ListView(
        children: const <Widget>[
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
          FillTile(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (int i) {
          setState(() {
            Log.i(TAG, i);
            setState(() {
              index = i;
            });
          });
        },
        height: 50,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            tooltip: "Home",
            selectedIcon: Icon(SFSymbols.drop_fill),
            icon: Icon(
              SFSymbols.drop,
              color: Colors.black54,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            tooltip: "Metrics",
            selectedIcon: Icon(SFSymbols.moon_circle_fill),
            icon: Icon(
              SFSymbols.moon_circle,
              color: Colors.black54,
            ),
            label: 'Home',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        child: const Icon(SFSymbols.plus),
      ),
    );
  }
}
