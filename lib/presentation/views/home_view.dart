import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_trivia/presentation/bloc/number_trivia_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
            builder: ((context, state) {
              if (state is Loading) return const Center(child: CircularProgressIndicator(),);
              if (state is Loaded) {
                return Container(
                  child: Text(state.trivia.text),
                );
              }
              return Text('data');
            }) 
            ),
        ],
      ),
    );
  }
}