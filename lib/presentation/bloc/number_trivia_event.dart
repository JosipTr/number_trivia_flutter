part of 'number_trivia_bloc.dart';

@immutable
abstract class NumberTriviaEvent {}

class GetTriviaForRandomNumber extends NumberTriviaEvent {}
