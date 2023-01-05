import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swiper/utils/logger.dart';

// ignore: constant_identifier_names
const TAG = 'HomePage';
var random = Random();

void main() => runApp(const InstaGallery());

class InstaGallery extends StatelessWidget {
  const InstaGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: const Center(
          child: Text('Material Text'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Log.e(TAG, "FAB Pressed"),
          child: const Icon(Iconsax.folder),
        ),
      ),
    );
  }
}
