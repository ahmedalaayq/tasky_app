import 'package:flutter/material.dart';
import 'package:tasky/screens/home_page.dart';
import 'package:tasky/screens/welcome_page.dart';
import 'package:tasky/services/preference_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceManager().initPreference();
  final String? userName = PreferenceManager().getString(key: 'userName');
  runApp(MyApp(userName: userName));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.userName});

  final String? userName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasky',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:
          userName == null || userName!.isEmpty
              ? const WelcomePage()
              : const HomePage(),
    );
  }
}
