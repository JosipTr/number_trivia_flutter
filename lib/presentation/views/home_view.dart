import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:number_trivia/injector.dart';

import '../widgets/loading_widget.dart';
import '../widgets/trivia_display.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<NumberTriviaBloc> buildBody(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<NumberTriviaBloc>()..add(GetTriviaForRandomNumber()),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                  builder: (context, state) {
                    if (state is Loading) {
                      return const LoadingWidget();
                    }
                    else if (state is Loaded) {
                      return TriviaDisplay(numberTrivia: state.trivia);
                    } else {
                      return const Text('Error');
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                //Bottom half
                const TriviaControls()
              ],
            ),
          ),
        ));
  }
}

class TriviaControls extends StatelessWidget {
  const TriviaControls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Placeholder(
          fallbackHeight: 40,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: ElevatedButton(
                  onPressed: () {dispatchRandom(context);},
                  child: const Text('Random'),
            )),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
                child: Placeholder(
              fallbackHeight: 30,
            )),
          ],
        )
      ],
    );
  }
}

void dispatchRandom(BuildContext context) {
  BlocProvider.of<NumberTriviaBloc>(context).add(GetTriviaForRandomNumber());
}