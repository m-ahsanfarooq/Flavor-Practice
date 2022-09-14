
import 'package:flutter/material.dart';

import 'counter/counter_vu.dart';
import 'flavor_config.dart';

var flavorConfig;
void mainCommon( FlavorConfig config) {
  flavorConfig = config;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flavor TESTING',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  CounterScreen(flavorConfig),
    );
  }
}

