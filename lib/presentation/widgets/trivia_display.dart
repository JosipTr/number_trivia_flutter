import 'package:flutter/material.dart';

import '../../domain/entities/number_trivia.dart';

class TriviaDisplay extends StatelessWidget {
  final NumberTrivia numberTrivia;
  const TriviaDisplay({
    Key? key,
    required this.numberTrivia,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: Column(
        children: <Widget>[
          Text(numberTrivia.number.toString(), style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Text(numberTrivia.text, style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}