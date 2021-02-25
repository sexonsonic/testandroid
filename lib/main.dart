import 'package:checkingapp/widgets/homescreen.dart';
import 'package:checkingapp/widgets/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(body: SplashScreen()),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new Home(),
        });
  }
}
