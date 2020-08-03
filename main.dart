import 'package:flutter/material.dart';
import 'package:task1/home.dart';
import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyHome());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHome();
  }
}
