import 'package:flutter/material.dart';
import 'package:learning_journey/home_screen.dart';
import 'package:learning_journey/screen_two.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home:  HomeScreen(),//Make sure HomeScreen is a const constructor
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        ScreenTwo.id: (context) => const ScreenTwo(),
      } ,

    );
  }
}
