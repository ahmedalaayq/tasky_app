import 'package:flutter/material.dart';
import 'package:tasky/screens/welcome_screen.dart';
import 'package:tasky/services/preference_manager.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceManager().initPreference();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasky',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WelcomeScreen(),
    );
  }
}
