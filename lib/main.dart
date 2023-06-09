import 'package:flutter/material.dart';
import 'package:quiz_app/core/cach_helper.dart';
import 'package:quiz_app/core/db/sqldb.dart';
import 'package:quiz_app/features/auth/views/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/auth/views/login.dart';
import 'features/home/presentation/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SqlDb().intialDb();
  CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  SplashView(),
    );
  }
}

