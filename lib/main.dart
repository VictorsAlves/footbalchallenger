import 'package:flutter/material.dart';
import 'package:footbalchallenger/home_page.dart';
import 'package:footbalchallenger/login_page.dart';
import 'package:footbalchallenger/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const MyHomePage(title: 'home temporaria'),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage()
      },
    );
  }
}
