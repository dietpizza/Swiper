import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:swiper/pages/routes.dart';
import 'package:swiper/utils/database.dart';

// ignore: constant_identifier_names
const TAG = 'HomePage';

void main() async {
  await initDatabase();
  runApp(const InstaGallery());
}

class InstaGallery extends StatelessWidget {
  const InstaGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        splashColor: Colors.transparent,
      ),
      initialRoute: '/',
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
