import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/info_page.dart';
import 'package:flutter_application_1/pages/intro_page.dart';
import 'package:flutter_application_1/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
        ),
        useMaterial3: true,
      ),
      routes: {
        'intropage': (context) => const IntroPage(),
        'mainpage': (context) => const MainPage(),
      },
      home: const IntroPage(),
    );
  }
}


// backgroundColor: Theme.of(context).colorScheme.inversePrimary,