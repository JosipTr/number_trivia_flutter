import 'package:dartz/dartz.dart';
import 'package:number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Exception, NumberTrivia>> getRandomNumberTrivia();
  Future<Either<Exception, NumberTrivia>> getConcreteNumberTrivia();
}