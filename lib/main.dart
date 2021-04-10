import 'package:flutter/material.dart';
import 'file:///C:/xampp/htdocs/Flutter/CursoInfnetFlutter/flutter_nubank/flutter_nubank/lib/screens/dashboard_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.deepPurple,
          primaryColor: Colors.deepPurple,
        ),
        home: SplashScreen(
      seconds: 5,
      photoSize: 100,
      navigateAfterSeconds: DashboardScreen(),
      title: Text(
        'NoBank',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      backgroundColor: Colors.deepPurple,
      image: Image.network(
        'https://aws1.discourse-cdn.com/nubank/original/2X/5/54fdbc79df351fd7bc20c7495a96682a9fb7754b.gif',
      ),
    ));
  }
}
