import 'package:flutter/material.dart';
import 'package:instagram/home_page.dart';
import 'package:instagram/sign_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        // home 속성이 있으면 routes xpdlqmfdms '/' 경로를 포함할 수 없다. 불필요해서다.
        // home: SignPage(),
        routes: {
          '/': (context) => const SignPage(),
          '/home': (context) => const HomePage()
        });
  }
}
