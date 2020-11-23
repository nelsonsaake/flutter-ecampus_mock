import 'package:flutter/material.dart';
import 'screens/explore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eCampus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Explore(),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: true,
    );
  }
}


echo "# flutter-ecampus_mock" >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/nelsonsaake/flutter-ecampus_mock.git
git push -u origin main
