import 'package:flutter/material.dart';

import 'package:meme_app/presentation/pages/meme_home_page.dart';

import 'package:meme_app/core/injector/injector.dart' as injector;

void main() {
  injector.configureDependencies();
  runApp(const MemeApp());
}

class MemeApp extends StatelessWidget {
  const MemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: MemeAppHome(),
    );
  }
}
