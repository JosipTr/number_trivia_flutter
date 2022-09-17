part of 'number_trivia_bloc.dart';

@immutable
abstract class NumberTriviaEvent {}

class GetTriviaForRandomNumber extends NumberTriviaEvent {}

class GetTriviaForConcreteNumber extends NumberTriviaEvent {
  final int number;

  GetTriviaForConcreteNumber(this.number);
}
