part of 'number_trivia_bloc.dart';

@immutable
abstract class NumberTriviaState {}

class NumberTriviaInitial extends NumberTriviaState {}

class Loading extends NumberTriviaState {}

class Loaded extends NumberTriviaState {
  final NumberTrivia trivia;

  Loaded(this.trivia);
}
