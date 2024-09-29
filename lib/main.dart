import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:textgame/landingpage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const TextApp());
}

class TextApp extends StatelessWidget {
  const TextApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const LandingPage(),  // Set LandingPage as the initial screen
    );
  }
}


