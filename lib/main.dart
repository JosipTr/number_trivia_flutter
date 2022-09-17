import 'package:flutter/material.dart';
import 'package:number_trivia/presentation/views/home_view.dart';
import 'injector.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      theme: ThemeData(
        primaryColor: Colors.red.shade800, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red.shade600)
      ),
      home: const HomeView(),
    );
  }
}
