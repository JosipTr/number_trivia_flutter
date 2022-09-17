import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'injector.dart' as di;
import 'presentation/views/home_view.dart';

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
    return BlocProvider<NumberTriviaBloc>(
      create: (_) => di.sl()..add(GetTriviaForRandomNumber()),
      child: const MaterialApp(
        title: 'Number Trivia',
        home: HomeView(),
      ),
    );
  }
}
